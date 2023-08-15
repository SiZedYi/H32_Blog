const {
  listUsers,
  searchUser,
  getUserInfo,
  getUserRoles,
  listRoles,
  getAllUserInRole,
} = require("../controllers/userController");

const {
  listYears,
  getYearInfor,
} = require("../controllers/timelineController");
const router = require("express").Router();


//User
router.get("/list_users", listUsers);
router.get("/list_users/:userID", getUserInfo);
router.get("/list_users/:userID/roles", getUserRoles);

router.get("/search_user/", searchUser);

//Role
router.get("/list_roles", listRoles);
router.get("/list_roles/:roleID", getAllUserInRole);

// Timeline
router.get("/list_years", listYears);
router.get("/list_years/:year", getYearInfor);

module.exports = router;
