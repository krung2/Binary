const router = require('express').Router();
const auth = require('./auth');
const dog = require('./dog');

router.use('/auth', auth);
router.use('/dog', dog);

module.exports = router;