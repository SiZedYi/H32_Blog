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
router.get("/list-users", listUsers);
router.get("/list-users/:userID", getUserInfo);
router.get("/list-users/:userID/roles", getUserRoles);

router.get("/search-user/", searchUser);

//Role
router.get("/list-roles", listRoles);
router.get("/list-roles/:roleID", getAllUserInRole);

// Timeline
router.get("/list-years", listYears);
router.get("/list-years/:year", getYearInfor);

module.exports = router;
