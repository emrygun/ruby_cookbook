collection = [ [1, 'one'], [2, 'two'], [3, 'three'], [4, 'four'] ]

hash = collection.inject(Hash.new) do |hash, value|
  hash[value.first] = value.last
  hash
end

p hash

#As an alternative way
class Array

  def to_h(default=nil)
    Hash[ *inject([]) { |a, value| a.push value, default || yield(value) }]
  end

end

a = [1, 2, 3]
p a.to_h { |x| [x * 2, x * 3] }
