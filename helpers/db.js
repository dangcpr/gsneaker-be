
const initOptions = {};
const pgp = require("pg-promise")(initOptions);

const db = {
    host: "ep-polished-cake-891996-pooler.ap-southeast-1.postgres.vercel-storage.com",
    port: 5432,
    database: "verceldb",
    user: "default",
    password: "IG5SriYU4hsf",
    ssl: true,
    max: 20,
}

module.exports = pgp(db);
