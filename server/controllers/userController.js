const db = require("../config/sequelize/index");
const { User, UserRole, UserUserRole } = require("../models/user");
const { ImageUser } = require("../models/image");

const sequelize = require("../config/sequelize/index");

// Khởi tạo apicode để quy về 1 định dạng api duy nhất
const ApiCode = require("../utils/apicode");
const { Op } = require("sequelize");
const apiCode = new ApiCode();

const pagination = require('../utils/pagination');
// list user api
const listUsers = (req, res) => {
  const page = req.query.page || 1;
  const itemsPerPage = 28;
  const getUsers = User.findAll({
    attributes: ["userID","accountName"],
    include: [
      {
        model: ImageUser,
        attributes: ["imgURL"], // Chọn thuộc tính bạn muốn hiển thị
        where: {
          imgURL: {
            [Op.ne]: 'a', // Loại bỏ các imgURL bằng 'a'
          },
      },
    }
    ],
  })
  getUsers
    .then(listUsers => {
      const paginatedResult = pagination.paginate(listUsers, page, itemsPerPage);
      return res.json(apiCode.success(paginatedResult, "List All User Success"));
    })
    .catch(err => {
      return res.json(apiCode.error(err, "List All User Fail"));
    });
};

// search user theo 1 tiêu chí nào đó (tên...)
const searchUser = (req, res) => {
  const { n: name, y: academicYear, m: major } = req.query;
  // 'fullName', 'academicYear',
  User.findAll({
    attributes: ["accountName", "major"],
    where: {
      [Op.or]: [
        {
          accountName: {
            [Op.like]: `%${name}%`,
          },
        },
        // {academicYear: {
        // 	[Op.like]: `%${academicYear}%`
        // }},
        {
          major: {
            [Op.like]: `%${major}%`,
          },
        },
      ],
    },
  })
    .then((searchResult) => {
      return res.json(apiCode.success(searchResult, "List All User Success"));
    })
    .catch((err) => {
      return res.json(apiCode.error(err, "List All User Fail"));
    });
};

// get thông tin của 1 userID
const getUserInfo = (req, res) => {
  const userID = req.params.userID;
  User.findByPk(userID, {
    attributes: { exclude: ["passWord", "userID"] }, // Loại bỏ trường "password" trong kết quả trả về
    include: [
        {
          model: ImageUser,
          attributes: ["imgURL"], // Chọn thuộc tính bạn muốn hiển thị
        },
      ]
  })
  .then((userInfo) => {
    userInfo["khoa"] = User.academicYear - 2004;
    console.log(userInfo.khoa);
    return res.json(apiCode.success(userInfo, `Get User Info Success`));
    })
    .catch((err) => {
      return res.json(apiCode.error(err, "Get User Info Fail"));
    });
};

//list roles của 1 userID
const getUserRoles = (req, res) => {
  const userID = req.params.userID;
  sequelize
    .query(
      `SELECT u.userID, u.accountName, userRoleNote
	FROM USER AS u
	INNER JOIN USERUSERROLE AS uur ON u.userID = uur.userID
	INNER JOIN USERROLE AS ur ON ur.userRoleID = uur.userRoleID
	WHERE u.userID = ${userID} AND ur.active = 1`,
      {
        model: UserRole,
        mapToModel: true,
      },
    )
    .then((listUsers) => {
      return res.json(apiCode.success(listUsers, "List Roles of User Success"));
    })
    .catch((err) => {
      return res.json(apiCode.error(err, "List Roles of User Fail"));
    });
};

// list all role
const listRoles = (req, res) => {
  UserRole.findAll()
    .then((listRoles) => {
      return res.json(apiCode.success(listRoles, "List All Role Success"));
    })
    .catch((err) => {
      return res.json(apiCode.error(err, "List All Role Fail"));
    });
};

//get all userID from 1 role
const getAllUserInRole = (req, res) => {
  const roleID = req.params.roleID;
  console.log(roleID);
  sequelize
    .query(
      `SELECT u.userID, u.accountName, userRoleNote
	FROM USERROLE AS ur
	INNER JOIN USERUSERROLE AS uur ON ur.userRoleID = uur.userRoleID
	INNER JOIN USER AS u ON u.userID = uur.userID
	WHERE ur.userRoleID = '${roleID}' `,
      {
        model: UserRole,
        mapToModel: true,
      },
    )
    .then((listUsers) => {
      return res.json(apiCode.success(listUsers, "List Roles of User Success"));
    })
    .catch((err) => {
      return res.json(apiCode.error(err, "List Roles of User Fail"));
    });
};

module.exports = {
  listUsers,
  searchUser,
  getUserInfo,
  getUserRoles,
  listRoles,
  getAllUserInRole,
};
