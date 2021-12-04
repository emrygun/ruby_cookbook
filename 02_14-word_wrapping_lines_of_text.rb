def wrap(s, width=78)
  s.gsub(/(.{1,#{width}})(\s+|\Z)/, "\\1\n")
end

puts wrap("This text is too short to be wrapped.")
puts wrap("This text is too short to be wrapped.", 10)

def reformat(s, width=78)
  s.gsub(/\s+/, " ").gsub(/(.{1, #{width}})(|\Z )/, "\\1\n")
end

puts ">> Reformated"
puts reformat(wrap("This text is too short to be wrapped.", 10), 10)
