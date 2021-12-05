require 'set'

s = Set.new((1..10).collect)

s.divide { |x| x % 2 }
s = Set.new([1, 2, 3, 4, 5 , 'a', '%', -1.9])

p s.divide { |x| x.class }
p s.classify { |x| x.class }

class Array

  def classify
    require 'set'
    h = {}

    each do |i|
      x = yield(i) if block_given?
      x = i.class unless block_given?

      (h[x] ||= self.class.new) << i
    end
    h
  end

  def divide(&block)
    Set.new(classify(&block).values)
  end

end

p [1, 2, 3, 4, 1, 'a', 1.55, '%', :abc].classify {|x| x.class.to_s[0]}
p [1, 2, 3, 4, 1, 'a', 1.55, '%', :abc].divide {|x| x.class}
