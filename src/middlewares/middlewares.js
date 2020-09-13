const jwt = require('jsonwebtoken')
const helper = require('../helpers/helpers')
const multer = require('multer')
const express = require('express')
const app = express()

// const storage = multer.diskStorage({
//     destination: function (req, file, cb) {
//       cb(null, './uploads')
//     },
//     filename: function (req, file, cb) {
//       cb(null, file.fieldname + '-' + Date.now() + file.originalname)
//     }
//   })

// const fileFilter = function (req, file, cb){
//   const allowedTypes = ["image/jpeg", "image/png", "image/gif"]
//   if (!allowedTypes.includes(file.mimetype)) {
//     cb(null, false)
//     return req.uploadErrorMessage = 'Only image allowed'
//   }
//   cb(null, true)
// }

// const obj = multer({     
//     storage: storage,
//     fileFilter,
//     limits: {
//       fileSize: 2 * 1024 * 1024
//     }
// })

// const upload = multer(obj).array('image')

// const limitFile = (req, res, next) => {
//   upload(req, res, function (error) {
//     console.log('err multer')
//     console.log(error)
//     if (error) {
//       if (error.code === 'LIMIT_FILE_SIZE') return helper.responseGetAll(res, {message: 'Max file size 2mb'} , 400)
//       return helper.responseGetAll(res, {error}, 400)
//     } else {
//       next()
//     }
//   })
// }

let muldecode = {}
const verifyAccess = (req, res, next) => {
  let token = req.headers.authorization
  if (token !== undefined) {
    token = token.split(' ')[1]
    jwt.verify(token, process.env.SECRET_KEY, function (err, decode) {
      if (err) {
        console.log(err)
        if(err.name === "JsonWebTokenError"){
          return helper.responseGetAll(res, { message: 'token invalid' }, 401)
        } else if (err.name === "TokenExpiredError") {
          return helper.responseGetAll(res, { message: 'token expired' }, 401)
        }
      }
      if (decode.roleId == 'seller') {
        req.decode = decode
        muldecode = decode
        next()
      } else {
        return helper.responseGetAll(res, { message: 'Anda bukan Admin' }, 401)
      }
    })
  } else {
    return helper.responseGetAll(res, { message: 'token has not been entered' }, 401)
  }
}

const verifyCustomer = (req, res, next) => {
  let token = req.headers.authorization
  if (token !== undefined) {
    token = token.split(' ')[1]
    jwt.verify(token, process.env.SECRET_KEY, function (err, decode) {
      if (err) {
        console.log(err)
        if(err.name === "JsonWebTokenError"){
          return helper.responseGetAll(res, { message: 'token invalid' }, 401)
        } else if (err.name === "TokenExpiredError") {
          return helper.responseGetAll(res, { message: 'token expired' }, 401)
        }
      }
      if (decode.roleId == 'customer') {
        req.decode = decode
        muldecode = decode
        next()
      } else {
        return helper.responseGetAll(res, { message: 'Anda belum login' }, 401)
      }
    })
  } else {
    return helper.responseGetAll(res, { message: 'token has not been entered' }, 401)
  }
}

const storage = multer.diskStorage({
  destination: function (req, file, cb) {
    console.log(req.body.nameCategory)
    console.log('ak multer')
    console.log(muldecode)
    cb(null, `./uploads/imgUser/${muldecode.roleId}`)
  },
  filename: function (req, file, cb) {
    cb(null, file.fieldname + '-' + Date.now() + file.originalname)
  }
})

const upload = multer({     
  storage: storage
})

const limitFile = (req, res, next) => {
  upload(req, res, function (error) {
    console.log('err multer')
    console.log(error)
    if (error) {
      if (error.code === 'LIMIT_FILE_SIZE') return helper.responseGetAll(res, {message: 'Max file size 2mb'} , 400)
      return helper.responseGetAll(res, {error}, 400)
    } else {
      next()
    }
  })
}


module.exports = {
    // verifyAccess: (req, res, next) => {
    //   let token = req.headers.authorization
    //   if (token !== undefined) {
    //     token = token.split(' ')[1]
    //     jwt.verify(token, process.env.SECRET_KEY, function (err, decode) {
    //       if (err) {
    //         console.log(err)
    //         if(err.name === "JsonWebTokenError"){
    //           return helper.responseGetAll(res, { message: 'token invalid' }, 401)
    //         } else if (err.name === "TokenExpiredError") {
    //           return helper.responseGetAll(res, { message: 'token expired' }, 401)
    //         }
    //       }
    //       if (decode.roleId == 'seller') {
    //         req.decode = decode
    //         next()
    //       } else {
    //         return helper.responseGetAll(res, { message: 'Anda bukan Admin' }, 401)
    //       }
    //     })
    //   } else {
    //     return helper.responseGetAll(res, { message: 'token has not been entered' }, 401)
    //   }
    // },
    limitFile,
    verifyAccess,
    verifyCustomer,
    upload
  }