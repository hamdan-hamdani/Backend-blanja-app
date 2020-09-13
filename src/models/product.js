const connection = require('../configs/db')

module.exports = {
    allProduct: (id) => {
        return new Promise((resolve, reject) => {
            connection.query('SELECT product.*, imageproduct.image FROM product INNER JOIN imageproduct ON product.id = imageproduct.id_product WHERE idSeller = ? ', id, (err, result) => {
            if (!err) {
                resolve(result)
            } else {
                reject(new Error(err))
            }
            })
        })
    },
    getallProduct: (id) => {
        return new Promise((resolve, reject) => {
            connection.query('SELECT product.*, imageproduct.image FROM product INNER JOIN imageproduct ON product.id = imageproduct.id_product ', (err, result) => {
            if (!err) {
                resolve(result)
            } else {
                reject(new Error(err))
            }
            })
        })
    },
    getSortProduct: (nameProduct, order) => {
        return new Promise((resolve, reject) => {
            connection.query(`SELECT product.*, imageproduct.image FROM product INNER JOIN imageproduct ON product.id = imageproduct.id_product ORDER BY ${nameProduct} ${order}`, (err, result) => {
            if (!err) {
                resolve(result)
            } else {
                reject(new Error(err))
            }
            })
        })
    },
    getcategoryProduct: (category) => {
        return new Promise((resolve, reject) => {
            connection.query(`SELECT product.*, imageproduct.image FROM product INNER JOIN imageproduct ON product.id = imageproduct.id_product JOIN category ON product.nameCategory = category.id WHERE category.name = ? `, category, (err, result) => {
            if (!err) {
                resolve(result)
            } else {
                reject(new Error(err))
            }
            })
        })
    },
    productByCategory: (nameCategory) => {
        return new Promise((resolve, reject) => {
            connection.query('SELECT product.*, imageproduct.image FROM imageproduct JOIN product ON imageproduct.id_product = product.id JOIN category ON product.nameCategory = category.id WHERE category.name = ?', nameCategory, (err, result) => {
            if (!err) {
                resolve(result)
            } else {
                reject(new Error(err))
            }
            })
        })
    },
    insertProduct: (data) => {
        return new Promise((resolve, reject) => {
            connection.query('INSERT INTO product SET ? ', data, (err, result) => {
            if (!err) {
                resolve(result)
            } else {
                reject(new Error(err))
            }
            })
        })
    },
    productId: () => {
        return new Promise((resolve, reject) => {
            connection.query('SELECT id FROM product', (err, result) => {
                if (!err) {
                    resolve(result)
                } else {
                    reject(new Error(err))
                }
            })
        })
    },
    inserImageProduct: (data) => {
        return new Promise((resolve, reject) => {
            connection.query('INSERT INTO imageproduct SET ? ', data, (err, result) => {
            if (!err) {
                resolve(result)
            } else {
                reject(new Error(err))
            }
            })
        })
    },
    getProductSort: (id, nameProduct, order) => {
        return new Promise((resolve, reject) => {
          connection.query(`SELECT * FROM product WHERE idSeller = ? ORDER BY ${nameProduct} ${order}`, id, (err, result) => {
            if (!err) {
              resolve(result)
            } else {
              reject(new Error(err))
            }
          })
        })
      },
}