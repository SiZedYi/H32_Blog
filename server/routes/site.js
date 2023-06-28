const {
	renderHomePage,
	renderInfoPage,
	renderTimeLinePage,
} = require('../controllers/SiteController');

const router = require('express').Router();

router.use('/timeline',renderTimeLinePage);
router.use('/info', renderInfoPage);
router.use('/', renderHomePage);

module.exports = router;
