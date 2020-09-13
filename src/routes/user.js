const express = require('express')
const userController = require('../controllers/user')
const router = express.Router()

router
  .post('/registercustomer', userController.registerCustomer)
  .post('/logincustomer', userController.login)
  .post('/reset', userController.resetPassword)
  .patch('/registercustomer/:email', userController.updatePassword)

module.exports = router