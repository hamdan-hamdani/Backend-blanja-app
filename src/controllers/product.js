const productModel = require('../models/product')
const helper = require('../helpers/helpers')

module.exports = {
    getProduct: (req, res ) => {
        const nameCategory = req.query.nameCategory
        const sort = req.query.sort
        const order = req.query.order
        const id = req.decode.id
        // customer 
        if (nameCategory) {
            productModel.productByCategory(nameCategory)
            .then(result => {
                const categoryResult = result
                helper.responseGetAll(res, categoryResult, 200)
            })
            .catch(err => {
                console.log(err)
            })
        } else if (sort) {
            productModel.getProductSort(id, sort, order)
            .then(result => {
            const resultProduct = result
            if (resultProduct.length !== 0) {
                helper.responseGetAll(res, resultProduct, 200)
            } else {
                const massage = {
                message: 'Data not found'
                }
                res.json(massage)
            }
            })
            .catch(err => {
            const massage = {
                massage: `Column ${sort} not found`
            }
            res.json(massage)
            console.log(err)
            })
        }else {
            productModel.allProduct(id)
            .then(result => {
                const categoryResult = result
                helper.responseGetAll(res, categoryResult, 200)
            })
            .catch(err => {
                console.log(err)
            })
        }
    },
    getallproduct: (req, res) => {
        const sort = req.query.sort
        const order = req.query.order
        const category = req.query.category
        if (category) {
            productModel.getcategoryProduct(category)
            .then(result => {
                const categoryResult = result
                helper.responseGetAll(res, categoryResult, 200)
            })
            .catch(err => {
                console.log(err)
            })
        } else if (sort) {
            productModel.getSortProduct(sort, order)
            .then(result => {
                console.log(sort)
                console.log(order)
                const categoryResult = result
                helper.responseGetAll(res, categoryResult, 200)
            })
            .catch(err => {
                console.log(err)
            })
        }else {
            productModel.getallProduct()
                .then(result => {
                    const categoryResult = result
                    helper.responseGetAll(res, categoryResult, 200)
                })
                .catch(err => {
                    console.log(err)
                })
        }
    },
    insertProduct: (req, res) => {
        if (req.uploadErrorMessage) return helper.responseGetAll(res, {message: req.uploadErrorMessage}, 400)
        const id = req.decode.id
        const {
            nameCategory,
            nameProduct,
            nameBrand,
            price,
            color,
            condition,
            description,
            stock
        } = req.body
        console.log('insert product b')
        const file = req.files.map(file => `${process.env.INSERT_PRODUCT}${nameCategory}/${file.filename}`)
        console.log(file)
        // return
        const data = {
            nameCategory,
            nameProduct,
            nameBrand,
            price,
            color,
            condition,
            description,
            stock,
            idSeller: id
            // name,
            // image: file
            // image: `${process.env.INSERT_PRODUCT}${req.file.filename}`
        }
        productModel.insertProduct(data)
        .then(result => {
            productModel.productId()
            .then(res => {
                console.log(res)
                // return
                for (let i = 0 ; i < file.length; i++){
                    const data = {
                        image: file[i],
                        id_product: res[res.length-1].id
                    }
                    console.log(data.id_product)
                    productModel.inserImageProduct(data)
                    .then(res => {
                        console.log('berhasil mantap')
                    })
                // console.log(res[res.length-1].id)
                }
            })
            const categoryResult = result
            helper.responseGetAll(res, categoryResult, 200)
        })
        .catch(err => {
            console.log(err)
            helper.responseGetAll(res, {message:'Gagal mengupload image'}, 200)
        })
    },
    // untuk customer getProduct: (req, res ) => {
    //     const nameCategory = req.query.nameCategory
    //     const id = req.decode.id
    //     // customer 
    //     if (nameCategory) {
    //         productModel.productByCategory(nameCategory)
    //         .then(result => {
    //             const categoryResult = result
    //             helper.responseGetAll(res, categoryResult, 200)
    //         })
    //         .catch(err => {
    //             console.log(err)
    //         })
    //     } else {
    //         productModel.allProduct(id)
    //         .then(result => {
    //             const categoryResult = result
    //             helper.responseGetAll(res, categoryResult, 200)
    //         })
    //         .catch(err => {
    //             console.log(err)
    //         })
    //     }
    // },
}