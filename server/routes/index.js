const router = require("express").Router();
const siteRoute = require("./site");

router.use("/api", siteRoute);

module.exports = router;
