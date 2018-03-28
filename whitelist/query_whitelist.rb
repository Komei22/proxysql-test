require 'bundler/setup'
require 'mysql2'

client = Mysql2::Client.new(host: "127.0.0.1", username: "admin", password: "admin", database: "stats", port: 6032)

query_digests = client.query("SELECT digest_text FROM stats_mysql_query_digest")

query_digests.each do |query_digest|
  p query_digest["digest_text"]
end
