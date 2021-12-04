def fibonacci(limit = nil) 
  seed1 = 0
  seed2 = 1
  while not limit or seed2 <= limit
    yield(seed2)
    seed1, seed2 = seed2, seed1 + seed2
  end
end


fibonacci(3) {|x| puts x}
puts

class Range

  def each_slow
    x = self.begin
    while x <= self.end
      yield(x)
      x = x.succ
    end
  end

end

(1..10).each_slow {|x| puts x}
puts

class Fixnum

  def double_upto(stop)
    x = self
    until x > stop
      yield(x)
      x *= 2
    end
  end

end

10.double_upto(500) {|x| puts x}
puts

def oscillator
  x = 1
  while true
    yield x
    x *= 2
  end
end

oscillator { |x| puts x; break if x.abs > 50 }
puts

