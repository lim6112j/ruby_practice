arr = [1, 2, 3]
case arr
  in [Integer, Integer]
    puts :no_match
  in [Integer, Integer, *tail]
    p tail
end
# rightward assignment =>
login = { username: 'hornby', password: 'iliketrains' }
login => { username: username }

puts "Logged in with username #{username}"

case [1, 2, "a", 4, "b", "c", 7, 8, 9]
  in [*pre, String => x, String => z, *post]
    p pre
    p x
    p z
    p post
end

data = [
  {name: 'James', age: 50, first_language: 'english', job_title: 'general manager'},
  {name: 'Jill', age: 32, first_language: 'italian', job_title: 'leet coder'},
  {name: 'Helen', age: 24, first_language: 'dutch', job_title: 'biscuit quality control'},
  {name: 'Bob', age: 64, first_language: 'english', job_title: 'table tennis king'},
  {name: 'Betty', age: 55, first_language: 'spanish', job_title: 'pie maker'},
]

name = "Jill"
age = 32
job_title = "leet coder"

match = data.find do |person|
  person[:name] == name && person[:age] == age && person[:job_title] == job_title
end

p match&.fetch(:first_language)
