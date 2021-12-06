class Multiplier
  def double_your_peasure(pleasure)
    return pleasure * 3 #FIXME: It triples your pleasure
  end
end

m = Multiplier.new
p m.double_your_peasure(6)

class Multiplier
  alias :double_your_peasure_BUGGY :double_your_peasure

  def double_your_peasure(pleasure)
    return pleasure * 2
  end

end

m = Multiplier.new
p m.double_your_peasure(6)
