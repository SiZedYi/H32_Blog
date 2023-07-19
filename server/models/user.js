const {Model, DataTypes} = require('sequelize')
const sequelize = require('../config/sequelize');

class User extends Model {}
class UserRole extends Model {}
class UserUserRole extends Model {}


User.init(
    {
        userID: {
            type: DataTypes.INTEGER,
            primaryKey:true,
            autoIncrement: true,
        },
        accountName: {
            type: DataTypes.STRING(50),
            allowNull: false,
            unique: true,
        },
        passWord: {
            type: DataTypes.STRING(50),
            allowNull: false,
        },
        birthdayDatetime: {
            type: DataTypes.DATE,
            defaultValue: DataTypes.NOW,
        },
        address: {
            type: DataTypes.STRING(100),
            defaultValue: 'H32_LAB',
        },
        phoneNumber: {
            type: DataTypes.STRING(50),
            allowNull: false,
            unique: true,
        },
        email: {
            type: DataTypes.STRING(50),
            allowNull: false,
            unique:true,
        },
        about: {
            type: DataTypes.STRING(50),
            allowNull: false,
            unique: true,
        },
        insLink: {type: DataTypes.TEXT, },
        faceLink: {type: DataTypes.TEXT, },
        major: {type: DataTypes.STRING(500),  }
    },
    {
        sequelize, // Truyền đối tượng Sequelize đã khởi tạo
        modelName: 'User', // Tên của model
        tableName: 'USER', // Tên của bảng trong cơ sở dữ liệu
        timestamps: false, // Không sử dụng timestamps (createdAt và updatedAt)
    }
)

UserRole.init(
    {
      userRoleID: {
        type: DataTypes.STRING(50),
        primaryKey: true,
      },
      userRoleNote: {
        type: DataTypes.STRING(50),
      },
      active: {
        type: DataTypes.BOOLEAN,
        allowNull: false,
      },
      createByUserID: {
        type: DataTypes.INTEGER,
      },
    },
    {
      sequelize,
      modelName: 'UserRole',
      tableName: 'USERROLE',
      timestamps: false,
    }
  );

  UserUserRole.init(
    {
      userID: {
        type: DataTypes.INTEGER,
        primaryKey: true,
      },
      userRoleID: {
        type: DataTypes.STRING(50),
        primaryKey: true,
      },
    },
    {
      sequelize,
      modelName: 'UserUserRole',
      tableName: 'USERUSERROLE',
      timestamps: false,
    }
  );

  // Thiết lập mối quan hệ

  User.belongsToMany(UserRole, {
    through: 'UserUserRole',
    foreignKey: 'userID',
    otherKey: 'userRoleID',
  });
  UserRole.belongsToMany(User, {
    through: 'UserUserRole',
    foreignKey: 'userRoleID',
    otherKey: 'userID',
  });

  // Export các mô hình
module.exports = { User, UserRole, UserUserRole };