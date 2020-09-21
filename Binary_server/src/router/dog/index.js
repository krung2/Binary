const router = require('express').Router();
const dogCtrl = require('./dog.Ctrl');

router.post('/doginfo', dogCtrl.info);

module.exports = router;