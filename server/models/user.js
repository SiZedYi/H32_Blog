const { Model, DataTypes, STRING } = require("sequelize");
const sequelize = require("../config/sequelize");
class User extends Model {}
class UserRole extends Model {}
class UserUserRole extends Model {}

User.init(
  {
    userID: {
      type: DataTypes.INTEGER,
      primaryKey: true,
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
    fullName: {
      type: DataTypes.STRING(50),
      allowNull: false,
    },
    academicYear: {
      type: DataTypes.INTEGER,
      defaultValue: null,
    },
    about: {
      type: DataTypes.TEXT,
      defaultValue: null,
    },
    major: {
      type: DataTypes.STRING(50),
      defaultValue: null,
    },
    currentJob: {
      type: DataTypes.STRING(50),
      defaultValue: null,
    },

  },
  {
    sequelize,
    modelName: "User", // Tên của model
    tableName: "user", // Tên của bảng trong cơ sở dữ liệu
    timestamps: false, // Không sử dụng timestamps (createdAt và updatedAt)
  },
);

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
    modelName: "UserRole",
    tableName: "userrole",
    timestamps: false,
  },
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
    modelName: "UserUserRole",
    tableName: "useruserrole",
    timestamps: false,
  },
);

// Thiết lập mối quan hệ

User.belongsToMany(UserRole, {
  through: "UserUserRole",
  foreignKey: "userID",
  otherKey: "userRoleID",
});
UserRole.belongsToMany(User, {
  through: "UserUserRole",
  foreignKey: "userRoleID",
  otherKey: "userID",
});

// Export các mô hình
module.exports = { User, UserRole, UserUserRole };
