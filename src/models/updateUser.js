const connection = require('../configs/db')

module.exports = {
  updateSeller: (id, data) => {
    return new Promise((resolve, reject) => {
      connection.query('UPDATE seller SET name = ? , email = ? , phoneNumber = ? , gender = ? , tglLahir = ? , image = ? WHERE id = ?', [data.name, data.email, data.phoneNumber, data.gender, data.tglLahir, data.image , id], (err, result) => {
        if (!err) {
          resolve(result)
        } else {
          reject(new Error(err))
        }
      })
    })
  },
  updateCustomer: (id, data) => {
    return new Promise((resolve, reject) => {
      connection.query('UPDATE users SET name = ? , email = ? , phoneNumber = ? , gender = ? , tglLahir = ? , image = ? WHERE id = ?', [data.name, data.email, data.phoneNumber, data.gender, data.tglLahir, data.image , id], (err, result) => {
        if (!err) {
          resolve(result)
        } else {
          reject(new Error(err))
        }
      })
    })
  },
  getSeller: (id) => {
    return new Promise((resolve, reject) => {
      connection.query('SELECT * FROM seller WHERE id = ?', id, (err, result) => {
        if (!err) {
          resolve(result)
        } else {
          reject(new Error(err))
        }
      })
    })
  },
  getCustomer: (id) => {
    return new Promise((resolve, reject) => {
      connection.query('SELECT * FROM users WHERE id = ?', id, (err, result) => {
        if (!err) {
          resolve(result)
        } else {
          reject(new Error(err))
        }
      })
    })
  },
  getAddress: (id) => {
    return new Promise((resolve, reject) => {
      connection.query('SELECT address.* FROM seller join address ON seller.id = address.idSeller WHERE seller.id = ?', id, (err, result) => {
        if (!err) {
          resolve(result)
        } else {
          reject(new Error(err))
        }
      })
    })
  },
  getAddressCustomer: (id) => {
    return new Promise((resolve, reject) => {
      connection.query('SELECT addressuser.* FROM users join addressuser ON users.id = addressuser.idUser WHERE users.id = ?', id, (err, result) => {
        if (!err) {
          resolve(result)
        } else {
          reject(new Error(err))
        }
      })
    })
  },
  updateAddress: (id, data) => {
    return new Promise((resolve, reject) => {
      connection.query('UPDATE address SET addressAs = ? , nameRecipient = ? , address = ? , city = ? , noRecipient = ? , codePos = ? WHERE idSeller = ?', [data.addressAs, data.nameRecipient, data.address, data.city, data.noRecipient, data.codePos , id], (err, result) => {
        if (!err) {
          resolve(result)
        } else {
          reject(new Error(err))
        }
      })
    })
  },
  updateAddressUser: (id, data) => {
    return new Promise((resolve, reject) => {
      connection.query('UPDATE addressuser SET addressAs = ? , nameRecipient = ? , address = ? , city = ? , noRecipient = ? , codePos = ? WHERE idUser = ?', [data.addressAs, data.nameRecipient, data.address, data.city, data.noRecipient, data.codePos , id], (err, result) => {
        if (!err) {
          resolve(result)
        } else {
          reject(new Error(err))
        }
      })
    })
  },
  insertAddress: (data) => {
    return new Promise((resolve, reject) => {
      connection.query('INSERT INTO address SET ?', data, (err, result) => {
        if (!err) {
          resolve(result)
        } else {
          reject(new Error(err))
        }
      })
    })
  },
  insertAddressCustomer: (data) => {
    return new Promise((resolve, reject) => {
      connection.query('INSERT INTO addressuser SET ?', data, (err, result) => {
        if (!err) {
          resolve(result)
        } else {
          reject(new Error(err))
        }
      })
    })
  },
  updateStore: (id, data) => {
    return new Promise((resolve, reject) => {
      connection.query('UPDATE seller SET storeName = ? , email = ? , phoneNumber = ? , description = ? , image = ? WHERE id = ?', [data.storeName, data.email, data.phoneNumber, data.description, data.image, id], (err, result) => {
        if (!err) {
          resolve(result)
        } else {
          reject(new Error(err))
        }
      })
    })
  },
  getStore: (id) => {
    return new Promise((resolve, reject) => {
      connection.query('SELECT storeName, email, phoneNumber, description, image FROM seller WHERE id = ?', id, (err, result) => {
        if (!err) {
          resolve(result)
        } else {
          reject(new Error(err))
        }
      })
    })
  },
}
