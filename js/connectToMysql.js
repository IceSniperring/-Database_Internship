const mysql = require('mysql')

const db = mysql.createPool({
    host: 'localhost',
    user: 'root',
    password: '5028',
    database: 'gamemanage',
})

module.exports = {
    db
}




