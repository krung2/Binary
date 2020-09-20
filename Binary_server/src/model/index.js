const Sequelize = require('sequelize');

const sequelize = new Sequelize('binary', 'root', '1234', {
    host: 'localhost',
    dialect: 'mysql',
    logging: false,

    define: {
        timestamps: false,
    },
});

const DogFun = require('./Dog')
const UserFun = require('./User')