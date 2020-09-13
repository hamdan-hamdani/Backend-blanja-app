const categoryModel = require('../models/category')
const helper = require('../helpers/helpers')

module.exports = {
    category: (req, res ) => {
        categoryModel.allCategory()
        .then(result => {
            const categoryResult = result
            helper.responseGetAll(res, categoryResult, 200)
        })
        .catch(err => {
            console.log(err)
        })
    },
    insertCategory: (req, res) => {
        if (req.uploadErrorMessage) return helper.responseGetAll(res, {message: req.uploadErrorMessage}, 400)
        const {name} = req.body
        const data = {
            name,
            image: `${process.env.INSERT_PRODUCT}${req.file.filename}`
        }
        categoryModel.insertCategory(data)
        .then(result => {
            const categoryResult = result
            helper.responseGetAll(res, categoryResult, 200)
        })
        .catch(err => {
            console.log(err)
            helper.responseGetAll(res, {message:'Gagal mengupload image'}, 200)
        })
    }
}