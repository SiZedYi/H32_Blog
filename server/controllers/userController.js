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
      return res.json(apiCode.success(listUser, "List All User Success"))
    })
    .catch(err => {
		return res.json(apiCode.error(err, "List All User Fail"))
    });
};

//get all roles of 1 userID
const getUserRoles = (req, res) => {
	const userID = req.params.userID;
	sequelize.query(`SELECT u.userID, u.accountName, userRoleNote
	FROM USER AS u
	INNER JOIN USERUSERROLE AS uur ON u.userID = uur.userID
	INNER JOIN USERROLE AS ur ON ur.userRoleID = uur.userRoleID
	WHERE u.userID = ${userID} AND ur.active = 1`, {
		model: UserRole,
		mapToModel: true
	  }).then(listUser => {
		return res.json(apiCode.success(listUser, "List Roles of User Success"))
	  }).catch(err => {
		return res.json(apiCode.error(err, "List Roles of User Fail"))
	  });
	  ;
  };

const listRole = (req, res) => {
	UserRole.findAll()
    .then(listRole => {
		return res.json(apiCode.success(listRole, "List All Role Success"))
    })
    .catch(err => {
		return res.json(apiCode.error(err, "List All Role Fail"))
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
