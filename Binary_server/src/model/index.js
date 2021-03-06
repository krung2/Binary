const Sequelize = require('sequelize');

const sequelize = new Sequelize('binary', 'root', '1234', {
    host: 'localhost',
    dialect: 'mysql',
    logging: false,

    define: {
        timestamps: false,
    },
});

const DogFun = require('./Dog');
const UserFun = require('./User');
const HospitalFun = require('./Hospital');

module.exports = {
    User: UserFun(sequelize, Sequelize),
    Dog: DogFun(sequelize, Sequelize),
    Hospital: HospitalFun(sequelize, Sequelize),
}

sequelize.sync().then(() => {
    console.log('[Model] Databases sync');
}).catch((err) => {
    console.log(err.massage);
});