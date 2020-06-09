#---
# Excerpted from "Seven Databases in Seven Weeks",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material,
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose.
# Visit http://www.pragmaticprogrammer.com/titles/pwrdata for more book information.
#---
require 'redis'
#%w{hiredis redis/connection/hiredis}.each{|r| require r}

TOTAL_NUNBER_OF_ENTRIES = ARGV[0].to_i
BATCH_SIZE = 1000

# perform a single batch update for each number
def flush(batch)
  $redis.pipelined do
    batch.each do |n|
      key, value = "key#{n}", "value#{n}"
      $redis.set(key, value)
    end
  end
  batch.clear
end

$redis = Redis.new(:host => "127.0.0.1", :port => 6379)
$redis.flushall

batch = []
count, start = 0, Time.now

(1..TOTAL_NUNBER_OF_ENTRIES).each do |n|
  count += 1

  # push integers into an array
  batch << n

  # watch this number fluctuate between 1 and 1000
  puts "Batch size: #{batch.length}"

  # if the array grows to BATCH_SIZE, flush it
  if batch.size == BATCH_SIZE
    flush(batch)
  end

  break if count >= TOTAL_NUNBER_OF_ENTRIES
end
# flush any remaining values
flush(batch)

puts "#{count} items in #{Time.now - start} seconds"
