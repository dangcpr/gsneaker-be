
const initOptions = {};
const pgp = require("pg-promise")(initOptions);

const db = {
    host: "rosie.db.elephantsql.com",
    port: 5432,
    database: "bwxeffxr",
    user: "bwxeffxr",
    password: "Fy6eOgpdxyJa1Ikx6GxFVk_s8xLNsLAw",
    ssl: true,
    max: 20,
}

module.exports = pgp(db);
