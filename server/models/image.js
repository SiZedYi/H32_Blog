const { Model, DataTypes } = require("sequelize");
const sequelize = require("../config/sequelize");

const { User } = require("./user");

class ImageUser extends Model {}
class LabImage extends Model {}

ImageUser.init(
  {
    imageID: {
      type: DataTypes.STRING(50),
      primaryKey: true,
    },
    userID: {
      type: DataTypes.INTEGER,
      allowNull: false,
    },
    imgURL: {
      type: DataTypes.TEXT,
      allowNull: false,
    },
    imgUnBgURL: {
      type: DataTypes.TEXT,
      allowNull: false,
    },
  },
  {
    sequelize,
    modelName: "ImageUser",
    tableName: "imageuser",
    timestamps: false,
  },
);

LabImage.init(
  {
    labImageID: {
      type: DataTypes.STRING(50),
      primaryKey: true,
    },
    userID: {
      type: DataTypes.INTEGER,
      allowNull: false,
    },
    tag: {
      type: DataTypes.STRING(50),
      allowNull: false,
    },
    description: {
      type: DataTypes.STRING(100),
      defaultValue: "img_lab",
    },
    year: {
      type: DataTypes.INTEGER,
      defaultValue: 1,
    },
    imgURL: {
      type: DataTypes.TEXT,
      allowNull: false,
    }
  },
  {
    sequelize,
    modelName: "LabImage",
    tableName: "labimage",
    timestamps: false,
  },
);

// Thiết lập mối quan hệ

User.hasMany(ImageUser, { foreignKey: "userID" });
ImageUser.belongsTo(User, { foreignKey: "userID" });

User.hasMany(LabImage, { foreignKey: "userID" });
LabImage.belongsTo(User, { foreignKey: "userID" });

// Export các mô hình
module.exports = { ImageUser, LabImage };
