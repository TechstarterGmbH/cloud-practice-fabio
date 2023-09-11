const express = require('express')
const router = express.Router()

router.get('/', (req, res) => {
    console.log('GET /api/nachricht ', req.ip);
    res.json({ nachricht: 'Hallo von der API!' });
});

router.post('/create', (req, res) => {
    console.log('POST /api/nachricht/create ', req.ip);
});

router.put('/update', (req, res) => {
    console.log('PUT /api/nachricht/update ', req.ip);
});

router.delete('/delete', (req, res) => {
    console.log('DELETE /api/nachricht/delete ', req.ip);
});

module.exports = router
