p [1, 2, 3].sort_by {rand}
p [1, 2, 3].shuffle

class Array

  def shuffle!
    each_index do |i|
      j = rand(length - i) + i
      self[i], self[j] = self[j], self[i]
    end
  end

  def shuffle
    dup.shuffle!
  end

end

p [1, 2, 3].shuffle

