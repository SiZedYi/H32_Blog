const db = require("../config/sequelize/index");
const { TimeLine } = require("../models/timeline");
const sequelize = require("../config/sequelize/index");

// Khởi tạo apicode để quy về 1 định dạng api duy nhất
const ApiCode = require("../utils/apicode");
const apiCode = new ApiCode();

// get danh sách các năm từ 2011 đến nay {sử dụng tham số truyền vào là (2011, now) }

// get thông tin chi tiết của 1 năm nào đó
