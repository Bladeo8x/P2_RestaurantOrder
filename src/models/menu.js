const { Model, DataTypes } = require("sequelize");
const bcryptjs = require("bcryptjs");
const sequelize = require("../config/connection");

class menu extends Model {}

menu.init(
  {
    id: {
      type: DataTypes.INTEGER,
      allowNull: false,
      primaryKey: true,
      autoIncrement: true,
    },
    dish_name: {
      type: DataTypes.STRING,
      allowNull: false,
    },
    dish_desc: {
      type: DataTypes.STRING,
      allowNull: false,
    },
    dish_price: {
      type: DataTypes.INTEGER,
      allowNull: false,
    },
    dish_type: {
      type: DataTypes.INTEGER,
      allowNull: false,
    },
    dish_img: {
      type: DataTypes.STRING,
      allowNull: false,
    },
  },
  {
    sequelize,
    timestamps: false,
    freezeTableName: true,
    underscored: true,
    modelName: "menu",
  }
);

module.exports = menu;
