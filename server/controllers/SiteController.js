

const renderHomePage = (req, res, next) => {
	res.json("Khanh oc cut")
};

const renderInfoPage = (req, res, next) => {
	res.json("hesllo")
};

const renderTimeLinePage = (req, res, next) => {
	res.json("hello")
};

module.exports = {
	renderHomePage,
	renderInfoPage,
	renderTimeLinePage,
};
