class MyClass

  private def defined_method
    "This is a defined method: #{self.class}##{__method__}"
  end

  private def method_missing(symbol, *args)
    "Sorry, I don't know anything about #{symbol} method"
  end

end

o = MyClass.new

class Fixnum

  private def method_missing(m, *args)
    raise ArgumentError, "Wrong number of arguments. (#{args.size} for 0)." if args.size > 0
    match = /^plus_([0-9]+)$/.match(m.to_s)
    if match
      self + match.captures[0].to_i
    else
      raise NoMethodError.new("undefined method '#{m}' for #{inspect}:#{self.class}")
    end
  end


end

p 4.plus_5
p 100.minus_4
