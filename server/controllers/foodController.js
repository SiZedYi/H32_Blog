const db = require("../config/sequelize/index");
const { Food } = require("../models/food");

const sequelize = require("../config/sequelize/index");

// Khởi tạo apicode để quy về 1 định dạng api duy nhất
const ApiCode = require("../utils/apicode");
const { Op } = require("sequelize");
const apiCode = new ApiCode();

//get list foods
const listFoods = (req, res) => {
    Food.findAll({
      attributes: {exclude: ["foodID", "moreInf"]},
      order: [['foodID']],
    })
    .then((listFoods) => {
      return res.json(apiCode.success(listFoods, "List All Food Success"));
    })
    .catch((err) => {
      return res.json(apiCode.error(err, "List All Food Fail"));
    });
}

//get food detail
const getFoodInfo = (req, res) => {
    const foodID = req.params.foodID;
    Food.findByPk(foodID, {
      attributes: {exclude: ["foodID"]},
    })
    .then((getFoodInfo) => {
      return res.json(apiCode.success(getFoodInfo, "Get Detail Food Success"));
    })
    .catch((err) => {
      return res.json(apiCode.error(err, "Get Detail Food Fail"));
    });
}

module.exports = {
    listFoods,
    getFoodInfo,
};