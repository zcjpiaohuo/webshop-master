import mysql from 'mysql'
import config from '../src/config'

const  conn = mysql.createConnection({
    host:"localhost", // 数据库的地址
    user: "root", // 账号
    password: "123456", // 密码
    database: "web_shop", // 数据库名称
    multipleStatements: true,  // 允许多条sql同时查询
});

conn.connect();

export default conn;