# Main goal: brevity in keystrokes
#################
# Hashes
old_way = {:foo => "bar", :one => 1}
new_way = {foo: "bar", one: 1}

foo_hash = {foo: 'bar'}

def old_method(options = {})
  #do stuff
  pp options
end

def new_method_unnamed_keyword_test(**options)
  #do stuff
  return options[:foo]
end

def new_method_named_keyword_test(foo:)
  #do stuff
  return foo
end

old_method(old_way)

pp new_method_unnamed_keyword_test(foo_hash)
pp new_method_named_keyword_test(foo_hash)

puts

#################
# def returns symbolic name of the method instead of name

class Foo
  private def baz
    return "yay"
  end

  def bar
    baz
  end
end

# pp Foo.new.baz #Throws NoMethodError
pp Foo.new.bar

puts

#################
# New way to define procs
old_way = Proc.new { |a, b| a + b }
old_way.call(1, 2)

new_way = ->(a ,b) { a + b }
new_way.call(1, 2)

#################
# New way to specify arrays of symbols
old_way = [:foo, :bar, :baz]
new_way = %i(foo bar baz)

p old_way
p new_way

puts

#################
# New way to define rational numbers
old_way = Rational(6, 5)
new_way = 1.2r

p old_way
p new_way

