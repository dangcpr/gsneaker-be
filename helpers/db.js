
const initOptions = {};
const pgp = require("pg-promise")(initOptions);

const db = {
    host: "dpg-cikgvctgkuvinfj2583g-a.singapore-postgres.render.com",
    port: 5432,
    database: "gsneaker",
    user: "admin",
    password: "aqSntS2TXY245sLXDhAEQVjaJmLEvori",
    ssl: true,
    max: 20,
}

module.exports = pgp(db);
