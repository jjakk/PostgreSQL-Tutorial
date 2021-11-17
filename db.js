const Pool = require('pg').Pool;

const pool = new Pool({
    user: 'postgres',
    host: 'localhost',
    database: 'students',
    password: process.env.POSTGRES_PW
});

module.exports = pool;