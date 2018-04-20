require 'bundler/setup'
require 'mysql2'

client = Mysql2::Client.new(host: "127.0.0.1", username: "admin", password: "admin", database: "stats", port: 6032)

query_digests = client.query("SELECT * FROM stats_mysql_query_digest")

File.open("./../tmp/query_digest_log", "w") do |f|
  query_digests.each do |query_digest|
    f.puts(query_digest)
  end
end
