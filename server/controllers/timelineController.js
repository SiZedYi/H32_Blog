const db = require("../config/sequelize/index");
const { TimeLine } = require("../models/timeline");
const { LabImage } = require("../models/image");

const sequelize = require("../config/sequelize/index");

// Khởi tạo apicode để quy về 1 định dạng api duy nhất
const ApiCode = require("../utils/apicode");
const { Op } = require("sequelize");
const apiCode = new ApiCode();

// get danh sách các năm từ 2011 đến nay {sử dụng tham số truyền vào là (2011, now) }
const listYears = (req, res) => {
  TimeLine.findAll({
    attributes: ["year"],
  })
  .then((listYears) => {
    return res.json(apiCode.success(listYears, "List All Years Success"));
  })
  .catch((err) => {
    return res.json(apiCode.error(err, "List All Years Fail"));
  });
}
// get thông tin chi tiết của 1 năm nào đó
const getYearInfor = (req, res) => {
  const year = req.params.year;
  const getTimeLine = TimeLine.findOne({
    where: { year: year },
    attributes: { exclude: ["tag", "timeLineID"] },
  });

  const getImage = LabImage.findOne({
    where: { year: year },
    attributes: ["imgURL"],
  });
  console.log(year);
  Promise.all([getTimeLine, getImage])
  .then(([yearInfo, imageInfo]) => {
    if (!yearInfo || !imageInfo) {
      return res.json(apiCode.error(null, "Year Info or Image not found"));
    }
    const combinedData = {
        ...yearInfo.get(), // Convert Sequelize instance to plain object
        imageInfo: imageInfo.imgURL,
    };
    return res.json(apiCode.success(combinedData, "Get Year Info Success"));
  })
  .catch((err) => {
    console.log(err);
    return res.json(apiCode.error(err, "Get Year Info Fail"));
  });
}
module.exports = {
  listYears,
  getYearInfor,
};