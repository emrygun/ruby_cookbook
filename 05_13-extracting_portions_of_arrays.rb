a = ("a".."h").to_a

p a.find_all { |x| x < "e" }
p a.grep /[aeiou]/
