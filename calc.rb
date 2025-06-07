require "redis"
if ARGV.length == 0
  puts "Please specify a consumer name"
  exit 1
end
ConsumerName = ARGV[0]
GroupName = "mygroup"
r = Redis.new
def process_message(id, msg)
  puts "[#{ConsumerName}] #{id} = #{msg.inspect}"
end
$lastid = '0-0'
puts "Consumer #{ConsumerName} starting..."
check_backlog = true
while true
  if check_backlog
    myid = $lastid
  else
    myid = '>'
  end
  items = r.xreadgroup('GROUP')
end
