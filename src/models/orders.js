const { Model, DataTypes } = require('sequelize');
const bcrypt = require('bcrypt');
const sequelize = require('../config/connection');

class Orders extends Model {

}

Orders.init(
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
        foreignKey: true,
        autoIncrement: true,
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
        type: DataTypes.DATE,
        allowNull: false,
    },
    orderDate: {
        type: DataTypes.INTEGER,
        allowNull: false,
    },
    totalCost: {
      type: DataTypes.INTEGER,
      allowNull: false,
    },
  },
  {
    sequelize,
    timestamps: false,
    freezeTableName: true,
    underscored: true,
    modelName: 'Orders',
  }
);

module.exports = Orders;
