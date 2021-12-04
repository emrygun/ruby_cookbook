s = 'My kingdom for a string!'

puts ">> Slices with indexes"
p s.slice(3, 7)
p s[3, 7]
p s[0, 3]
p s[11, 5]
p s[11, 7]

puts ">> Slices with regexp"
p s[/.ing/]
p s[/str.*/]
