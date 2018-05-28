whitelist_filename = ARGV[0]
list_filename = ARGV[1]

whitelist = []
File.open(whitelist_filename) do |f|
  f.each_line do |query_digest|
    whitelist << query_digest
  end
end

list = []
File.open(list_filename) do |f|
  f.each_line do |input_query_digest|
    list << input_query_digest
  end
end

puts (list - (whitelist & list)).length
