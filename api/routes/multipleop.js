const express = require('express')
const router = express.Router()
const MultipleopControllers = require('../controllers/multipleop.js')

router.get('/', MultipleopControllers.getAllQuestions)
router.get('/:id', MultipleopControllers.getQuestion)
router.get('/getQuestiontext/:id', MultipleopControllers.getQuestiontext)
router.get('/getAnswer/:id', MultipleopControllers.getAnswer)
router.get('/getImagename/:id', MultipleopControllers.getImagename)
router.get('/getAnswertype/:id', MultipleopControllers.getAnswertype)

router.post('/add', MultipleopControllers.addQuestion)
router.put('/update/:id', MultipleopControllers.updateQuestion)
router.delete('/drop/:id', MultipleopControllers.dropQuestion)




module.exports = router;