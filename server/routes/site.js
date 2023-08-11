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
router.get("/listUsers", listUsers);
router.get("/listUsers/:userID", getUserInfo);
router.get("/listUsers/:userID/roles", getUserRoles);

router.get("/searchUser/", searchUser);

//Role
router.get("/listRoles", listRoles);
router.get("/listRoles/:roleID", getAllUserInRole);

// Timeline
router.get("/listYears", listYears);
router.get("/listYears/:year", getYearInfor);
module.exports = router;
