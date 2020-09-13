const express = require('express')
const productController = require('../controllers/product')
const router = express.Router()
const { limitFile, verifyAccess } = require('../middlewares/middlewares')
const multer = require('multer')

const storage = multer.diskStorage({
  destination: function (req, file, cb) {
    console.log(req.body.nameCategory)
    console.log('ak multer')
    cb(null, `./uploads/${req.body.nameCategory}`)
  },
  filename: function (req, file, cb) {
    cb(null, file.fieldname + '-' + Date.now() + file.originalname)
  }
})

const upload = multer({     
  storage: storage
})

router
  .post('/product', verifyAccess, upload.array('images', 4), productController.insertProduct)
  .get('/product', verifyAccess, productController.getProduct)
  .get('/allproduct', productController.getallproduct)
//   .patch('/registercustomer/:email', categoryController.updatePassword)

module.exports = router