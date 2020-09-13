const updateUserModel = require('../models/updateUser')
const helper = require('../helpers/helpers')
const bcrypt = require('bcryptjs')
const jwt = require('jsonwebtoken')

module.exports = {
    updateUser: (req, response) => {
    //   const {
    //     roleId
    //   } = req.body
      if (req.decode.roleId === 'customer') {
        const id = req.decode.id
        const {
            name,
            email,
            phoneNumber,
            gender,
            tglLahir
        } = req.body
        const data = {
            name,
            email,
            phoneNumber,
            gender,
            tglLahir,
            image: `${process.env.INSERT_USER}${req.decode.roleId}/${req.file.filename}`
        }
        console.log(data.image)
        updateUserModel.updateCustomer(id, data)
        .then(res => {
            const resultUser = res
            helper.responseGetAll(response, resultUser, 200)
        })
        .catch(err => {
            console.log(err)
            helper.responseGetAll(response, {message: 'gagal update'}, 500)
        })
      } else if (req.decode.roleId === 'seller'){
        const id = req.decode.id
        const {
            name,
            email,
            phoneNumber,
            gender,
            tglLahir
        } = req.body
        const data = {
            name,
            email,
            phoneNumber,
            gender,
            tglLahir,
            image: `${process.env.INSERT_USER}${req.decode.roleId}/${req.file.filename}`
        }
        console.log(data.image)
        updateUserModel.updateSeller(id, data)
        .then(res => {
            const resultUser = res
            helper.responseGetAll(response, resultUser, 200)
        })
        .catch(err => {
            console.log(err)
            helper.responseGetAll(response, {message: 'gagal update'}, 500)
        })
      } else {
        helper.responseGetAll(response, { message: 'roleId tidak ada' }, 501)
      }
    },
    getUser: (req, response) => {
        // const {
        //   roleId
        // } = req.body

        if (req.decode.roleId === 'customer') {
          const id = req.decode.id
          updateUserModel.getCustomer(id)
          .then(result => {
            const resultUser = result
            if (resultUser.length === 0) helper.responseGetAll(response, {message: 'data tidak ada'}, 201 )
            delete resultUser[0].password
            helper.responseGetAll(response, resultUser, 200 )
          })
          .catch(err => {
            console.log(err)
            helper.responseGetAll(response, {message: 'gagal mengambil data'}, 500 )
          })
        } else if (req.decode.roleId === 'seller'){
          const id = req.decode.id
          updateUserModel.getSeller(id)
          .then(result => {
            const resultUser = result
            if (resultUser.length === 0) helper.responseGetAll(response, {message: 'data tidak ada'}, 201 )
            delete resultUser[0].password
            helper.responseGetAll(response, resultUser, 200 )
          })
          .catch(err => {
            console.log(err)
            helper.responseGetAll(response, {message: 'gagal mengambil data'}, 500 )
          })
        } else {
          helper.responseGetAll(response, { message: 'roleId tidak ada' }, 501)
        }
      },
      getAddress: (req, response) => {
        // const {
        //   roleId
        // } = req.body

        if (req.decode.roleId === 'customer') {
          const id = req.decode.id
          updateUserModel.getAddressCustomer(id)
          .then(result => {
            const resultUser = result
            if (resultUser.length === 0) helper.responseGetAll(response, {message: 'data tidak ada'}, 201 )
            // delete resultUser[0].password
            helper.responseGetAll(response, resultUser, 200 )
          })
          .catch(err => {
            console.log(err)
            helper.responseGetAll(response, {message: 'gagal mengambil data'}, 500 )
          })
        } else if (req.decode.roleId === 'seller'){
          const id = req.decode.id
          updateUserModel.getAddress(id)
          .then(result => {
            const resultUser = result
            if (resultUser.length === 0) helper.responseGetAll(response, {message: 'data tidak ada'}, 201 )
            // delete resultUser[0].password
            helper.responseGetAll(response, resultUser, 200 )
          })
          .catch(err => {
            console.log(err)
            helper.responseGetAll(response, {message: 'gagal mengambil data'}, 500 )
          })
        } else {
          helper.responseGetAll(response, { message: 'roleId tidak ada' }, 501)
        }
      },
      updateAddress: (req, response) => {
        //   const {
        //     roleId
        //   } = req.body
          if (req.decode.roleId === 'customer') {
            const id = req.decode.id
            const {
                addressAs,
                nameRecipient,
                address,
                city,
                noRecipient,
                codePos
            } = req.body
            const data = {
                addressAs,
                nameRecipient,
                address,
                city,
                noRecipient,
                codePos
            }
            updateUserModel.updateAddressUser(id, data)
            .then(res => {
                const resultUser = res
                helper.responseGetAll(response, resultUser, 200)
            })
            .catch(err => {
                console.log(err)
                helper.responseGetAll(response, {message: 'gagal update'}, 500)
            })
          } else if (req.decode.roleId === 'seller'){
            const id = req.decode.id
            const {
                addressAs,
                nameRecipient,
                address,
                city,
                noRecipient,
                codePos
            } = req.body
            const data = {
                addressAs,
                nameRecipient,
                address,
                city,
                noRecipient,
                codePos
            }
            updateUserModel.updateAddress(id, data)
            .then(res => {
                const resultUser = res
                helper.responseGetAll(response, resultUser, 200)
            })
            .catch(err => {
                console.log(err)
                helper.responseGetAll(response, {message: 'gagal update'}, 500)
            })
          } else {
            helper.responseGetAll(response, { message: 'roleId tidak ada' }, 501)
          }
        },
        insertAddress: (req, response) => {
            //   const {
            //     roleId
            //   } = req.body
              if (req.decode.roleId === 'customer') {
                const id = req.decode.id
                const {
                    addressAs,
                    nameRecipient,
                    address,
                    city,
                    noRecipient,
                    codePos
                } = req.body
                const data = {
                    addressAs,
                    nameRecipient,
                    address,
                    city,
                    noRecipient,
                    codePos,
                    idUser: id
                }
                updateUserModel.insertAddressCustomer(data)
                .then(res => {
                    const resultUser = res
                    helper.responseGetAll(response, resultUser, 200)
                })
                .catch(err => {
                    console.log(err)
                    helper.responseGetAll(response, {message: 'gagal insert data'}, 500)
                })
              } else if (req.decode.roleId === 'seller'){
                const id = req.decode.id
                const {
                    addressAs,
                    nameRecipient,
                    address,
                    city,
                    noRecipient,
                    codePos
                } = req.body
                const data = {
                    addressAs,
                    nameRecipient,
                    address,
                    city,
                    noRecipient,
                    codePos,
                    idSeller: id
                }
                updateUserModel.insertAddress(data)
                .then(res => {
                    const resultUser = res
                    helper.responseGetAll(response, resultUser, 200)
                })
                .catch(err => {
                    console.log(err)
                    helper.responseGetAll(response, {message: 'gagal insert data'}, 500)
                })
              } else {
                helper.responseGetAll(response, { message: 'roleId tidak ada' }, 501)
              }
            },
            updateStore: (req, response) => {
              //   const {
              //     roleId
              //   } = req.body
                if (req.decode.roleId === 'customer') {
                  
                } else if (req.decode.roleId === 'seller'){
                  const id = req.decode.id
                  const {
                    storeName,
                    email,
                    phoneNumber,
                    description
                  } = req.body
                  const data = {
                    storeName,
                    email,
                    phoneNumber,
                    description
                  }
                  if (req.file !== undefined) {
                    data.image = `${process.env.INSERT_USER}${req.decode.roleId}/${req.file.filename}` 
                  }else {
                    data.image = req.decode.image
                  }
                  updateUserModel.updateStore(id, data)
                  .then(res => {
                      const resultUser = res
                      helper.responseGetAll(response, resultUser, 200)
                  })
                  .catch(err => {
                      console.log(err)
                      helper.responseGetAll(response, {message: 'gagal update'}, 500)
                  })
                } else {
                  helper.responseGetAll(response, { message: 'roleId tidak ada' }, 501)
                }
              },
              getStore: (req, response) => {
                // const {
                //   roleId
                // } = req.body
        
                if (req.decode.roleId === 'customer') {
                  
                } else if (req.decode.roleId === 'seller'){
                  const id = req.decode.id
                  updateUserModel.getStore(id)
                  .then(result => {
                    const resultUser = result
                    if (resultUser.length === 0) helper.responseGetAll(response, {message: 'data tidak ada'}, 201 )
                    // delete resultUser[0].password
                    helper.responseGetAll(response, resultUser, 200 )
                  })
                  .catch(err => {
                    console.log(err)
                    helper.responseGetAll(response, {message: 'gagal mengambil data'}, 500 )
                  })
                } else {
                  helper.responseGetAll(response, { message: 'roleId tidak ada' }, 501)
                }
              },      
  }
  