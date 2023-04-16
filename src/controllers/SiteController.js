const renderHomePage = (req, res, next) => {
	res.render('pages/home');
};

const renderInfoPage = (req, res, next) => {
	res.render('pages/info');
};

module.exports = {
	renderHomePage,
	renderInfoPage,
};
