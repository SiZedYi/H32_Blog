const router = require("express").Router();
const siteRoute = require("./site");
const swaggerRouter = require('../utils/swagger/swagger');

router.use("/api", siteRoute);
router.use('/api-docs', swaggerRouter);
module.exports = router;
