const { Model, DataTypes } = require('sequelize');

const sequelize = require('../config/connection.js');

class Category extends Model {}

Category.init(
  {
    id: {
      type: DataTypes.INTEGER,
      allowNull: false,
      primaryKey: true,
      autoIncrement: true,
    },
    category_name: {
      type: DataTypes.STRING,
    },
  },
  {
    sequelize,
    timestamps: false,
    // freezeTableName enforces the table name to be equal to the model name
    freezeTableName: true,
    underscored: true,
    modelName: 'category',
  },
);

// below keeps console logging as false - why?
console.log(Category === sequelize.models.Category);
//console.log(Category.id());
//console.log(Category.category_name());
module.exports = Category;
