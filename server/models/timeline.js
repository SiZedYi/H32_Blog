const { Model, DataTypes } = require('sequelize');

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
        allowNull: false,
        },
        description: {
        type: DataTypes.STRING(200),
        allowNull: false,
        },
        year: {
        type: DataTypes.DATE,
        defaultValue: DataTypes.NOW,
        },
        title: {
        type: DataTypes.STRING(50),
        allowNull: false,
        },
    },
    {
        sequelize,
        modelName: 'TimeLine',
        tableName: 'TimeLine',
        timestamps: false,
    }
);

module.exports = {TimeLine }