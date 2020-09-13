const express = require('express')
const updateUserController = require('../controllers/updateUser')
const router = express.Router()
// const { limitFile, verifyAccess } = require('../middlewares/middlewares')
const { upload, verifyAccess, verifyCustomer } = require('../middlewares/middlewares')
const multer = require('multer')
const jwt = require('jsonwebtoken')

// const storage = multer.diskStorage({
//   destination: function (req, file, cb) {
//     console.log(req.body.nameCategory)
//     console.log('ak multer')
//     cb(null, `./uploads/imgUser/${req.body.roleId}`)
//   },
//   filename: function (req, file, cb) {
//     cb(null, file.fieldname + '-' + Date.now() + file.originalname)
//   }
// })

// const upload = multer({     
//   storage: storage
// })

router
  .get('/user/', verifyAccess, updateUserController.getUser)
  .patch('/user/', verifyAccess, upload.single('image'), updateUserController.updateUser)
  .get('/usercustomer/', verifyCustomer, updateUserController.getUser)
  .patch('/usercustomer/', verifyCustomer, upload.single('image'), updateUserController.updateUser)
  .get('/address/', verifyAccess, updateUserController.getAddress)
  .patch('/address/', verifyAccess, updateUserController.updateAddress)
  .post('/address/', verifyAccess, updateUserController.insertAddress)
  .get('/addresscustomer/', verifyCustomer, updateUserController.getAddress)
  .post('/addresscustomer/', verifyCustomer, updateUserController.insertAddress)
  .patch('/addresscustomer/', verifyCustomer, updateUserController.updateAddress)
  .get('/store/', verifyAccess, updateUserController.getStore)
  .patch('/store/', verifyAccess, upload.single('image'), updateUserController.updateStore)
module.exports = router