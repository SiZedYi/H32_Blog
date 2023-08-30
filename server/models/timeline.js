// @ts-nocheck
const { Model, DataTypes } = require("sequelize");
const sequelize = require("../config/sequelize");
class TimeLine extends Model {}

TimeLine.init(
  {
    timeLineID: {
      type: DataTypes.INTEGER,
      primaryKey: true,
      autoIncrement: true,
    },
    name: {
      type: DataTypes.STRING(50),
      allowNull: false,
    },
    tag: {
      type: DataTypes.STRING(50),
      defaultValue: null,
    },
    description: {
      type: DataTypes.TEXT,
      allowNull: false,
    },
    year: {
      type: DataTypes.INTEGER,
      defaultValue: 2,
    },
    title: {
      type: DataTypes.TEXT,
      allowNull: false,
    },
  },
  {
    sequelize,
    modelName: "TimeLine",
    tableName: "timeline",
    timestamps: false,
  },
);
module.exports = { TimeLine };
