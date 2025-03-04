const { Model, DataTypes } = require("sequelize");
const bcryptjsjs = require("bcryptjs");
const sequelize = require("../config/connection");

class order extends Model {}

order.init(
  {
    id: {
      type: DataTypes.INTEGER,
      allowNull: false,
      primaryKey: true,
      autoIncrement: true,
    },
    customerId: {
      type: DataTypes.INTEGER,
      allowNull: false,
      references: {
        model: "user",
        key: "id",
      },
    },
    tableId: {
      type: DataTypes.INTEGER,
      allowNull: false,
    },
    isCooked: {
      type: DataTypes.BOOLEAN,
      allowNull: false,
    },
    isDelivered: {
      type: DataTypes.BOOLEAN,
      allowNull: false,
    },
    orderDate: {
      type: DataTypes.INTEGER,
      allowNull: true,
    },
    totalCost: {
      type: DataTypes.INTEGER,
      allowNull: false,
    },
    //store a reference
  },
  {
    sequelize,
    timestamps: false,
    freezeTableName: true,
    underscored: true,
    modelName: "order",
  }
);

module.exports = order;
