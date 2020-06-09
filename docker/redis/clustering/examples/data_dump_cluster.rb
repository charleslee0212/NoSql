#---
# Excerpted from "Seven Databases in Seven Weeks",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material,
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose.
# Visit http://www.pragmaticprogrammer.com/titles/pwrdata for more book information.
#---
require 'redis'
require 'redis/distributed'

TOTAL_NUNBER_OF_ENTRIES = ARGV[0].to_i

$redis = Redis::Distributed.new([
  "redis://nosql-redis-cluster1:6379/",
  "redis://nosql-redis-cluster2:6380/"
])
$redis.flushall
count, start = 0, Time.now

(1..TOTAL_NUNBER_OF_ENTRIES).each do |n|
  count += 1

  key = "key#{n}"
  value = "value#{n}"

  $redis.set(key, value)

  break if count >= TOTAL_NUNBER_OF_ENTRIES
end
puts "#{count} items in #{Time.now - start} seconds"
