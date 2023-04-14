const router = require('express').Router();
const siteRoute = require('./site');

router.use('/', siteRoute);

module.exports = router;
