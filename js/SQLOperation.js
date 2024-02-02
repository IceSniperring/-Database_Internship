const {db} = require('./connectToMysql')

const bodyParser = require('body-parser');
const express = require("express");
const cors = require("cors");
const urlencodedParser = bodyParser.urlencoded({extended: false})
const app = new express();
const path = require('path');
var cnt = 0;
app.use(cors());
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({extended: false}));
//跨域请求
app.all('*', function (req, res, next) {
    res.header("Access-Control-Allow-Origin", "*");
    res.header("Access-Control-Allow-Headers", "X-Requested-With");
    res.header("Access-Control-Allow-Methods", "PUT,POST,GET,DELETE,OPTIONS");
    res.header("X-Powered-By", ' 3.2.1')
    res.header("Content-Type", "application/json;charset=utf-8");
    next();
});
//用express编写get请求
app.get('/getUser', (req, res) => {
    db.query('select * from user', (err, data) => {
        if (!err) {
            //返回查询数据
            res.send(data);
        }
    })
})

app.get('/getWeapon', (req, res) => {
    db.query('select * from weapon', (err, data) => {
        if (!err) {
            //返回查询数据
            res.send(data);
        }
    })
})

app.get('/getManager', (req, res) => {
    db.query('select * from admin', (err, data) => {
        if (!err) {
            //返回查询数据
            res.send(data);
        }
    })
})

app.get('/getStorehouse', (req, res) => {
    db.query('select * from storehouse', (err, data) => {
        if (!err) {
            //返回查询数据
            res.send(data);
        }
    })
})

app.post('/insertUser', function (req, res) {
    let insert = "insert into user values (?,?,?)";
    let userinfo = new Array(3);
    userinfo[0] = req.body.username;
    userinfo[1] = req.body.passwd1;
    userinfo[2] = 1;
    /****插入数据*****/
    db.query(insert, userinfo, function (err, result) {
        if (err) {
            //插入失败，返回错误信息
            console.log('[INSERT ERROR] - ', err.message);
            res.end(err.message + " ");
        } else {
            //插入成功则返回时间+success
            console.log('insert success!');
            res.end(new Date().toLocaleString() + ':success');
        }
    });
});

app.post('/updateWeapon', function (req, res) {
    let update = 'update weapon set isShelves=' + '\'' + req.body.isShelves + '\'' + 'where wpName=' + '\'' + req.body.wpName + '\'';
    db.query(update, function (err, result) {
        if (err) {
            console.log('[UPDATE ERROR] - ', err.message);
            res.end(err.message + " ");
        } else {
            console.log('update success!');
            res.end(new Date().toLocaleString() + ':success');
        }
    });
});

app.post('/updateCurrency', function (req, res) {
    let update = 'update user set currency=' + '\'' + req.body.currency + '\'' + 'where username=' + '\'' + req.body.username + '\'';
    db.query(update, function (err, result) {
        if (err) {
            console.log('[UPDATE ERROR] - ', err.message);
            res.end(err.message + " ");
        } else {
            console.log('update success!');
            res.end(new Date().toLocaleString() + ':success');
        }
    });
    let insert = 'insert into storehouse values (?,?)';
    let arr = [req.body.username, req.body.wpName];
    db.query(insert, arr, function (err, result) {
        if (err) {
            console.log('[UPDATE ERROR] - ', err.message);
            res.end(err.message + " ");
        } else {
            console.log('update success!');
            res.end(new Date().toLocaleString() + ':success');
        }
    });
});
app.post('/updateUserCurrency', function (req, res) {
    let update = 'update user set currency=' + '\'' + req.body.Change + '\'' + 'where username=' + '\'' + req.body.username + '\'';
    db.query(update, function (err, result) {
        if (err) {
            console.log('[UPDATE ERROR] - ', err.message);
            res.end(err.message + " ");
        } else {
            console.log('update success!');
            res.end(new Date().toLocaleString() + ':success');
        }
    });
});
app.listen(3000, () => {
    console.log('服务器开启中')
})