const express = require('express')
const userController = require('../controllers/user')
const router = express.Router()

router
  .post('/register', userController.register)
  .post('/login', userController.login)
  .post('/reset', userController.resetPassword)
  .patch('/register/:email', userController.updatePassword)

module.exports = router