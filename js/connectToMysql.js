const mysql = require('mysql')

const db = mysql.createPool({
    host: '43.136.74.111',//我的远程数据库
    user: 'gamemanage',
    password: '密码',
    database: 'gamemanage',
})

module.exports = {
    db
}




