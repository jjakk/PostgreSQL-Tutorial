const Pool = require('pg').Pool;

const pool = new Pool({
    user: process.env.DATABASE_USER,
    host: process.env.DATBASE_HOST,
    database: process.env.DATABASE,
    password: process.env.POSTGRES_PASSWORD,
    port: process.env.DATABASE_PORT
});

module.exports = pool;