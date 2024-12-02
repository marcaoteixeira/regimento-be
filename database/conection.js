const knex = require('knex')({
/*client: 'mysql2',
    connection: {
        host: 'localhost',
        port: 3306,
        user: 'root',
        password: 'dani039808',
        database: 'db_regdigital'
    }  */

// Estância Mysql AWS RDS
 client: 'mysql2',
    connection: {
        host: 'regfacilitado-db.cnaqg0i2ycq5.us-east-2.rds.amazonaws.com',        
        port: 3306,
        user: 'admin',
        password: 'dani039808',
        database: 'db_regdigital'
    }
});

module.exports = knex