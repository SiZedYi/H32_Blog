

const renderHomePage = (req, res, next) => {

	res.render('pages/home');
};

const renderInfoPage = (req, res, next) => {
	res.render('pages/info');
};

const renderTimeLinePage = (req, res, next) => {
	res.render('pages/timeline');
};

module.exports = {
	renderHomePage,
	renderInfoPage,
	renderTimeLinePage,
};
