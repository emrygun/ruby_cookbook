array = [1, 2, 3].lazy.map { |x| x * 10 }.select { |x| x > 10 }

# No calculations
# ...
# Still no calculations. we are not using the array
#
#
# Method is called to the array object
pp array.to_a
# => [20, 30]

# Flatmap is internally uses lazy enumetation automatically
def search_file(file_name, term)
  File.open(file_name) do |file|
    file.each.flat_map(&:split).grep(term)
  end
end

pp search_file("dir", "test")
