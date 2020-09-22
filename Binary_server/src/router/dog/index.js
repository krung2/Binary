const router = require('express').Router();
const dogCtrl = require('./dog.Ctrl');

router.post('/', dogCtrl.postDog);
router.get('/', dogCtrl.getDog);

router.get('/:idx', dogCtrl.getDogs);
router.put('/:idx', dogCtrl.modifyDog);

module.exports = router;