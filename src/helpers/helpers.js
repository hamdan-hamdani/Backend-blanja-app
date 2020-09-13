module.exports = {
    responsePagination: (res, result, status, err, page, limit, resultLength) => {
      const resultPrint = {}
      resultPrint.status = 'success'
      resultPrint.status_code = status
      resultPrint.pagination = {
        total: resultLength,
        per_page: limit,
        current_page: `localhost:4000/api/v1/products/${page}`,
        last_page: Math.ceil(resultLength / limit),
        next_page: `localhost:4000/api/v1/products/${parseInt(page) + 1}`,
        prev_page: `localhost:4000/api/v1/products/${parseInt(page) - 1}`
      }
      if (page === '1') {
        resultPrint.pagination.prev_page = null
      }
      resultPrint.result = result
      resultPrint.err = err || null
      return res.status(resultPrint.status_code).json(resultPrint)
    },
    responseGetAll: (res, result, status, err) => {
      const resultPrint = {}
      resultPrint.status = 'success'
      resultPrint.status_code = status
      resultPrint.result = result
      resultPrint.err = err || null
      return res.status(resultPrint.status_code).json(resultPrint)
    }
  }
  