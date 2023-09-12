const knex = require('knex')({
    client: 'mysql2',
    connection: {
        host: 'localhost',
        port: 3306,
        user: 'root',
        password: 'dani039808',
        database: 'db_regdigital'
    } 
   /* client: 'mysql2',
    connection: {
        host: 'regfacilitado-db.ctigr16bsvyp.sa-east-1.rds.amazonaws.com',
        port: 3306,
        user: 'admin',
        password: 'dani039808',
        database: 'db_regdigital'
    } */
});

module.exports = knex