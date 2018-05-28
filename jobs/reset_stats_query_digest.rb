require 'bundler/setup'
require 'mysql2'

client = Mysql2::Client.new(host: "127.0.0.1", username: "admin", password: "admin", database: "stats", port: 6032)

client.query("SELECT * FROM stats_mysql_query_digest_reset")
