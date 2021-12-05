class Array

  def into_hash(h)
    raise StandardError, "Expected array with even number of elements" unless size % 2 == 0
    0.step(size - 1, 2) { |x| h[self[x]] = self[x + 1] }
    h
  end

end

squares = [1, 1, 2, 3, 4, 9]
results = {}

p squares.into_hash(results)
