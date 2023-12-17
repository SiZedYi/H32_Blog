const { Model, DataTypes } = require("sequelize");
const sequelize = require("../config/sequelize");

class Food extends Model {}

Food.init(
    {
        foodID: {
            type: DataTypes.INTEGER,
            primaryKey: true, 
            autoIncrement: true,
        },
        name: {
            type: DataTypes.TEXT,
            allowNull: false,
        },
        imgFood: {
            type: DataTypes.TEXT,
        },
        minPrice: {
            type: DataTypes.DOUBLE,
            allowNull: false,
        },
        maxPrice: {
            type: DataTypes.DOUBLE,
            allowNull: false,
        },
        address: {
            type: DataTypes.TEXT,
        },
        moreInf: {
            type: DataTypes.TEXT,
        },
    },
    {
        sequelize,
        modelName: "Food", // Tên của model
        tableName: "food", // Tên của bảng trong cơ sở dữ liệu
        timestamps: false, // Không sử dụng timestamps (createdAt và updatedAt)
    },
)
module.exports = {Food};