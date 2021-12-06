class Tracker

  def important
    "This is an important method!"
  end

  def self.method_added(sym)
    raise '>> The important method has been redefined!' if sym == :important
    unless sym == :important
      puts ">> #{sym} was (re)defined!"
    end
  end

  def self.method_removed(sym)
    raise '>> The important method has been removed!' if sym == :important
    unless sym == :important
      puts ">> Method #{sym} was removed!"
    end
  end

  def self.method_undefined(sym)
    raise '>> The important method has been undefined!' if sym == :important
    unless sym == :important
      puts ">> Method #{sym} was removed!"
    end
  end

end

class Tracker
  undef :important
end
