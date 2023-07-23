const {
	listUsers,
	getUserRoles,
	listRoles,
	getAllUserInRole,
} = require('../controllers/userController');

const router = require('express').Router();

//User
router.get('/listUsers', listUsers);
router.get('/listUsers/:userID/roles', getUserRoles);

//Role
router.get('/listRoles',listRoles);
router.get('/listRoles/:roleID',getAllUserInRole);

// Timeline

module.exports = router;
