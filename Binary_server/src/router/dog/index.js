const router = require('express').Router();
const dogCtrl = require('./dog.Ctrl');

router.post('/', dogCtrl.postDog);

module.exports = router;