const router = require('express').Router();
const hospitalCtrl = require('./hospital.ctrl');

router.get('/', hospitalCtrl.findHospital);

module.exports = router;
