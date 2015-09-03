# good (space indent)
posts = Post.joins(:user).
  merge(User.paid).
  where(created_at: target_date)

# bad (tab indent)
User.active.
	some_scope(foo).
	other_scope(bar)

# good
posts = Post.joins(:user).
  merge(User.paid).
  where(created_at: target_date)
posts.each do |post|
  next if stuff_ids.include?(post.user_id)
  comment_count += post.comments.size
end

# bad
posts = Post.joins(:user).
  merge(User.paid).
  where(created_at: target_date).each do |post|
    next if stuff_ids.include?(post.user_id)
    comment_count += post.comments.size
  end

# good
User.active.
  some_scope(foo).
  other_scope(bar)

# bad
User.active.
some_scope(foo).
other_scope(bar)


# bad extra space
puts 'hello'    

# must one line chars
puts '012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678'

# good
[ :foo,
  :bar,
  :baz
]

# bad
[:foo,
  :bar,
  :baz
]

# good
array = [
  :foo,
  :bar,
  :baz,
]

# bad
array = [ :foo,
          :bar,
          :baz, ]

# bad
array = [ :foo,
          :bar,
          :baz,
        ]

# bad
array = [
  :foo,
  :bar,
  :baz, ]

# good
words = %w(foo bar baz)

# bad
words = ['foo', 'bar', 'baz']

# good
[*1..10]  #=> [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

# bad
(1..10).to_a  #=> [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

# good
{ hoge: 1, fuga: 2 }
# bad
{hoge: 1, fuga: 2}

# good
{ first: 42,
  second: 'foo',
}
# bad
{ :first => 42,
  :second => 'foo',
}

# good
{ :cookpad => 42,
  :'cookpad.com' => 'foo',
}
# bad
{ cookpad: 42,
  :'cookpad.com' => 'foo',
}

# good
{ first: 42,
  second: 'foo',
}

# bad
{
  first: 42,
  second: 'foo',
}

# bad
{ first: 42,
second: 'foo',
}

# good
hash = {
  first: 42,
  second: 'foo',
}

# bad
hash = { first: 42,
         second: 'foo',
       }

# bad
hash = { first: 42,
         second: 'foo',
}

# bad
hash = { first: 42,
  second: 'foo',
}

# bad
hash = {
first: 42,
second: 'foo',
}

# good
{ foo: 1, bar: 2 }

# bad
{ 'foo' => 1, 'bar' => 2 }

# good
fizzbuzz = if n % 3 == 0
    n % 5 == 0 ? 'fizzbuzz' : 'fizz'
  else
    n % 5 == 0 ? 'buzz' : "#{n}"
  end

# bad
fizzbuzz = n % 3 == 0 ? (n % 5 == 0 ? 'fizzbuzz' : 'fizz') : (n % 5 == 0 ? 'buzz' : "#{n}")

# bad
fizzbuzz = n % 3 == 0 ?
  (n % 5 == 0 ? 'fizzbuzz' : 'fizz') :
  (n % 5 == 0 ? 'buzz' : "#{n}")


# good
unless condition
  hoge
end

# bad
if !condition
  hoge
end

# bad
unless condition
  hoge
else
  hoge
end

# good
result = if condition
    body_code
  end

# good
result =
  if condition
    body_code
  end

# bad
result = if condition
  body_code
end

# bad
result = if condition
           body_code
         end

# good
foo(1, 2, foo: :bar, baz: 42)

# bad
foo(1, 2, { foo: :bar, baz: 42 })

# good
puts [1, 2, 3].map {|i|
  i * i
}

# bad
puts [1, 2, 3].map do |i|
  i * i
end

# good
[1, 2, 3].map {|n|
  n * n
}.each {|n|
  puts Math.sqrt(n)
}

# bad
[1, 2, 3].map do |n|
  n * n
end.each do |n|
  puts Math.sqrt(n)
end

# good
[1, 2, 3].each do |num|
  puts num
end

# bad
[1, 2, 3].each do |num|
    puts num
  end

# bad
[1, 2, 3].each do |num|
                 puts num
               end

# bad
[1, 2, 3].each do |num| puts num end

# good
[1, 2, 3].each {|num| puts num }
[1, 2, 3].each { |num| puts num }

# bad
[1, 2, 3].each {|num| puts num}

# bad
[1, 2, 3].each { |num| puts num}

# good
10.times { puts 'Hello world' }

# bad
10.times {puts 'Hello world' }

# bad
10.times {puts 'Hello world'}

# bad
10.times { puts 'Hello world'}

# good
Foo.new(
  arg,
  long_argument,
  key: value,
  long_key: long_value,
  pretty_so_much_very_long_key:
    pretty_so_much_very_tooooooooooooooooooooo_long_value,
)

# good
Foo.new(arg,
        long_argument,
        key: value,
        long_key: long_value)
  
# good
ActionMailer::Base.delivery_method :smtp,
  host: 'localhost',
  port: 25

class Foo
  # good
  def self.foo
  end

  # bad
  def Foo.foo
  end
end

class Foo
  # good
  class << self
    def foo
    end
    private :foo
  end

  # bad
  def self.foo
  end
  class <<self
    private :foo
  end
end

class Foo
  # good
  def foo
  end
  private :foo

  # bad
  def foo
  end

  private :foo
end

# good
class Foo
  def foo
  end

  private

  def bar
  end
end

# bad
class Foo
  def foo
  end

private

  def bar
  end
end

# bad
class Foo
  def foo
  end

  private

    def bar
    end
end

# bad
class Foo
  def foo
  end

  private
  def bar
  end
end

# good
def your_method(str)
  new_str = str.sub('xxx', 'yyy')
end

# bad
def your_method(str)
  str.sub!('xxx', 'yyy')
end
