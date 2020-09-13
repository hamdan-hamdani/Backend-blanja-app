const connection = require('../configs/db')

module.exports = {
    allCategory: () => {
        return new Promise((resolve, reject) => {
            connection.query('SELECT * FROM category', (err, result) => {
            if (!err) {
                resolve(result)
            } else {
                reject(new Error(err))
            }
            })
        })
    },
    insertCategory: (data) => {
        return new Promise((resolve, reject) => {
            connection.query('INSERT INTO category SET ? ', data, (err, result) => {
            if (!err) {
                resolve(result)
            } else {
                reject(new Error(err))
            }
            })
        })
    }
}