const db = require('../config/sequelize/index')
const { User, UserRole, UserUserRole } = require('../models/user')
const sequelize = require('../config/sequelize/index');

// Khởi tạo apicode để quy về 1 định dạng api duy nhất
const ApiCode = require('../utils/apicode')
const apiCode = new ApiCode()

// list user api
const listUsers = (req, res) => {
	User.findAll({
		attributes: { exclude: ['passWord'] } // Loại bỏ trường "password" trong kết quả trả về
	  })
    .then(listUsers => {
      return res.json(apiCode.success(listUsers, "List All User Success"))
    })
    .catch(err => {
		return res.json(apiCode.error(err, "List All User Fail"))
    });
};

// search user theo 1 tiêu chí nào đó (tên, khóa ...)
// get thông tin của 1 userID



//list roles của 1 userID
const getUserRoles = (req, res) => {
	const userID = req.params.userID;
	sequelize.query(`SELECT u.userID, u.accountName, userRoleNote
	FROM USER AS u
	INNER JOIN USERUSERROLE AS uur ON u.userID = uur.userID
	INNER JOIN USERROLE AS ur ON ur.userRoleID = uur.userRoleID
	WHERE u.userID = ${userID} AND ur.active = 1`, {
		model: UserRole,
		mapToModel: true
	  }).then(listUsers => {
		return res.json(apiCode.success(listUsers, "List Roles of User Success"))
	  }).catch(err => {
		return res.json(apiCode.error(err, "List Roles of User Fail"))
	  });
	  ;
  };

// list all role
const listRoles = (req, res) => {
	UserRole.findAll()
    .then(listRoles => {
		return res.json(apiCode.success(listRoles, "List All Role Success"))
    })
    .catch(err => {
		return res.json(apiCode.error(err, "List All Role Fail"))
    });
};

//get all userID from 1 role
const getAllUserInRole = (req, res) => {
	const roleID = req.params.roleID;
	console.log(roleID);
	sequelize.query(`SELECT u.userID, u.accountName, userRoleNote
	FROM USERROLE AS ur
	INNER JOIN USERUSERROLE AS uur ON ur.userRoleID = uur.userRoleID
	INNER JOIN USER AS u ON u.userID = uur.userID
	WHERE ur.userRoleID = '${roleID}' `, {
		model: UserRole,
		mapToModel: true
	  }).then( listUsers => {
		return res.json(apiCode.success(listUsers, "List Roles of User Success"))
	  }).catch( err => {
		return res.json(apiCode.error(err, "List Roles of User Fail"))
	  });
	  ;
};

module.exports = {
	listUsers,
	getUserRoles,
	listRoles,
	getAllUserInRole,

};
