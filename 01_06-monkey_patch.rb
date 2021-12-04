module MyMonkeyPatches
  refine String do
    def length
      30
    end
  end
end

class TestMonkey
  using MyMonkeyPatches

  def string_length(string)
    string.length
  end
  
  puts ">> Inside of the monke"
  p string = "foo"
  p string.length

end

puts
puts ">> Outside of the monke"

p string = "foo"
p string.length
