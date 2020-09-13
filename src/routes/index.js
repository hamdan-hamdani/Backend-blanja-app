const express = require('express')
const router = express.Router()
const user = require('./user')
const category = require('./category')
const product = require('./product')
const updateUser = require('./updateUser')

router
.use('/users', user)
.use('/categories', category)
.use('/products', product)
.use('/updateuser', updateUser)

module.exports = router