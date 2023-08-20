const express = require('express')
const router = express.Router()
const nachricht = require("./api/nachricht")

router.use("/nachricht", nachricht)

module.exports = router
