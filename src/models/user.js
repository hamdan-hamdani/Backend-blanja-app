const connection = require('../configs/db')

module.exports = {
  registerCustomer: (data) => {
    return new Promise((resolve, reject) => {
      connection.query('INSERT INTO users SET ? ', data, (err, result) => {
        if (!err) {
          resolve(result)
        } else {
          reject(new Error(err))
        }
      })
    })
  },
  cekUserByEmail: (email) => {
    return new Promise((resolve, reject) => {
      connection.query('SELECT * FROM users WHERE email = ?', email, (err, result) => {
        if (!err) {
          resolve(result)
        } else {
          reject(new Error(err))
        }
      })
    })
  },
  updatePassword: (email, data) => {
    return new Promise((resolve, reject) => {
      connection.query('UPDATE users SET password = ? WHERE email = ?', [data.password, email], (err, result) => {
        if (!err) {
          resolve(result)
        } else {
          reject(new Error(err))
        }
      })
    })
  },
  cekSellerByEmail: (email) => {
    return new Promise((resolve, reject) => {
      connection.query('SELECT * FROM seller WHERE email = ?', email, (err, result) => {
        if (!err) {
          resolve(result)
        } else {
          reject(new Error(err))
        }
      })
    })
  },
  registerSeller: (data) => {
    return new Promise((resolve, reject) => {
      connection.query('INSERT INTO seller SET ? ', data, (err, result) => {
        if (!err) {
          resolve(result)
        } else {
          reject(new Error(err))
        }
      })
    })
  },
  updatePasswordSeller: (email, data) => {
    return new Promise((resolve, reject) => {
      connection.query('UPDATE seller SET password = ? WHERE email = ?', [data.password, email], (err, result) => {
        if (!err) {
          resolve(result)
        } else {
          reject(new Error(err))
        }
      })
    })
  },
}
