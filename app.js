const express = require('express')
const app = express()
const bodyParser = require('body-parser')
const morgan = require('morgan')
const cors = require('cors')
const router = require('./src/routes/index')

// use module
// parse application/x-www-form-urlencoded
app.use(bodyParser.urlencoded({
    extended: false
}))
// parse application/json
app.use(bodyParser.json())

app.use(morgan('dev'))
// use cors
app.use(cors())

// make router
app.use('/api/v1', router)
app.use('/uploads', express.static('./uploads'))
app.use((err, res) => {
    res.json({
      success: false,
      status: 404,
      message: 'URL Not Found'
    })
    console.log(err)
  })

app.listen(process.env.PORT, () => {
    console.log('running in port : ' + process.env.PORT)
})