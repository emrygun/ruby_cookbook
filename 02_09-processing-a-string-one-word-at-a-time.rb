class String
  def word_count
    frequencies = Hash.new(0)
    downcase.scan(/\w+/) { |word| frequencies[word] += 1 }
    return frequencies
  end
end

p %{Dogs dogs dog dogs.}.word_count;
p %{"I have no shame," I said.}.word_count
