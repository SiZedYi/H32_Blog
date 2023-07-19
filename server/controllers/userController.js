// const mysql = require('mysql')
const db = require('../config/sequelize/index')
const { User, UserRole, UserUserRole } = require('../models/user')
const sequelize = require('../config/sequelize/index');

// Khởi tạo apicode để quy về 1 định dạng api duy nhất
const ApiCode = require('../utils/apicode')
const apiCode = new ApiCode()

// list user api
const listUser = (req, res) => {
	User.findAll()
    .then(listUser => {
      return res.json(apiCode.success(listUser, "List User Success"))
    })
    .catch(err => {
		return res.json(apiCode.error(err, "List User Fail"))
    });
};

//get all roles of 1 userID
const getUserRoles = (req, res) => {
	const userID = req.params.userID;
	sequelize.query(`SELECT *
	FROM USER AS u
	INNER JOIN USERUSERROLE AS uur ON u.userID = uur.userID
	INNER JOIN USERROLE AS r ON r.userRoleID = uur.userRoleID
	WHERE u.userID = ${userID}`, {
		model: UserRole,
		mapToModel: true
	  }).then(listUser => {
		res.json(listUser);
	  }).catch(err => {
		console.error(err);
		res.status(500).json({ error: err });
	  });
	  ;
  };

const listRole = (req, res) => {
	UserRole.findAll()
    .then(listRole => {
      res.json(listRole);
    })
    .catch(err => {
      console.error(err);
      res.status(500).json({ error: err });
    });
};

//get all userID from 1 role
const getAllUserInRole = (req, res) => {

};

module.exports = {
	listUser,
	getUserRoles,
	listRole,
	getAllUserInRole,

};
