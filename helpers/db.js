const Pool = require('pg').Pool

const db = () => {
    return new Pool({
        connectionString: "postgres://default:IG5SriYU4hsf@ep-polished-cake-891996.ap-southeast-1.postgres.vercel-storage.com:5432/verceldb" + "?sslmode=require",
    })
}

module.exports = db;
