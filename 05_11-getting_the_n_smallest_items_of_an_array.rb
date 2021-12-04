array = [1, 2, 3, 4, 5].shuffle

class Array
  def get_smallest_sublist(n = 1)
    self.sort[0..(n - 1)]
  end
end

p array.get_smallest_sublist(2)
