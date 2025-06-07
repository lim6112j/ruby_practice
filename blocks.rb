# single line block
[1, 2, 3].each { |num| puts num }
# multi line block
[1, 2, 3].each do |num|
  puts num
end

def logger
  yield
end

logger { puts "hello from the block" }

logger do
  p [1, 2, 3]
end

def love_language
  yield('Ruby')
  yield('Rails')
end

love_language { |lang| puts "I love #{lang}"}

@transactions = [10, -15, 25, 30, -24, -70, 999]

def transaction_statement
  @transactions.each do |transaction|
    yield transaction
  end
end

transaction_statement do |transaction|
  p "%0.2f" % transaction
end

def awesome_method
hash = {a: 'apple', b: 'banana', c: 'cookie'}
  hash.each do |key, value|
    yield key, value
  end
end

awesome_method { |key, value| puts "#{key}, #{value}"}

def maybe_block
  if block_given?
    puts "block patry"
  end
  puts "excuted regardlessly"
end

maybe_block

# lambda is a way to write a block to a variable

my_lambda = lambda { puts "my lambda"}
my_lambda.call

my_name = ->(name) {puts "hello #{name}"}
my_name_2 = lambda {|age| puts "I am #{age} years old"}

# proc
a_proc = Proc.new {puts "this is a proc"}
a_proc.call

a_proc = proc {puts "this is a proc"}
a_proc.call

a_proc = Proc.new {|name, age| puts "name: #{name}, --- age: #{age}"}
a_proc.call("tim", 80)

# capturing block
def cool_method(&my_block)
  my_block.call
end

cool_method {puts "cool"}
