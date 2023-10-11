const express = require('express')
const router = express.Router()
const ComlControllers = require('../controllers/comlquestions.js')

router.get('/', ComlControllers.getAllQuestions)
router.get('/:id', ComlControllers.getQuestion)
router.get('/getLabel/:id', ComlControllers.getLabel)
router.get('/getComl/:id', ComlControllers.getComl)

router.post('/add', ComlControllers.addQuestion)
router.put('/update/:id', ComlControllers.updateQuestion)
router.delete('/drop/:id', ComlControllers.dropQuestion)




module.exports = router;