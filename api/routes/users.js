const express = require('express')
const router = express.Router()
const UserControllers = require('../controllers/users.js')

router.get('/', UserControllers.getAllUsers)
router.get('/:id', UserControllers.getUser)
router.get('/getUserName/:id', UserControllers.getUserName)
router.get('/getUserEmail/:id', UserControllers.getUserEmail)
router.get('/getUserPassword/:id', UserControllers.getUserPassword)
router.get('/getUserAge/:id', UserControllers.getUserAge)
router.get('/getUserAdminPriviledge/:id', UserControllers.getUserAdminPriviledge)

router.post('/add', UserControllers.addUser)
router.put('/update/:id', UserControllers.updateUser)
router.put('/updatepassword/:id', UserControllers.updatePassword)
router.delete('/drop/:id', UserControllers.dropUser)



module.exports = router;