const { Model, DataTypes } = require('sequelize');

const { User } = require('./user');

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
    },
    {
      sequelize,
      modelName: 'ImageUser',
      tableName: 'IMAGEUSER',
      timestamps: false,
    }
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
        defaultValue: 'img_lab',
      },
      year: {
        type: DataTypes.DATE,
        defaultValue: DataTypes.NOW,
      },
    },
    {
      sequelize,
      modelName: 'LabImage',
      tableName: 'LabImage',
      timestamps: false,
    }
  );

// Thiết lập mối quan hệ

User.hasMany(ImageUser, {foreignKey:'userID'});
ImageUser.belongsTo(User, { foreignKey: 'userID' });

User.hasMany(LabImage, {foreignKey:'userID'})
LabImage.belongsTo(User, {foreignKey: 'userID'})

  // Export các mô hình
module.exports = { ImageUser, LabImage };