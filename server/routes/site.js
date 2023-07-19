const {
	listUser,
	getUserRoles,
	listRole,
	getAllUserInRole,
} = require('../controllers/userController');

const router = require('express').Router();

//User
router.get('/listUser', listUser);
router.get('/listUser/:userID/roles', getUserRoles);

//Role
router.get('/listRole',listRole);
router.get('/listRole/:roleID',getAllUserInRole);



module.exports = router;
