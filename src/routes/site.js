const {
	renderHomePage,
	renderInfoPage,
} = require('../controllers/SiteController');

const router = require('express').Router();

router.use('/info', renderInfoPage);
router.use('/', renderHomePage);

module.exports = router;
