const express = require('express')
const categoryController = require('../controllers/category')
const router = express.Router()
const { limitFile, verifyAccess } = require('../middlewares/middlewares')

router
  .post('/Category', verifyAccess, limitFile, categoryController.insertCategory)
  .get('/Category', categoryController.category)
//   .patch('/registercustomer/:email', categoryController.updatePassword)

module.exports = router