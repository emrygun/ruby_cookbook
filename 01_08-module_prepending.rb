module MyHelper
  def save
    puts "before"
    super
    puts "after"
  end
end

class MyBadClass
  include MyHelper
  def save
    puts "my code"
  end
end

class MyGoodClass
  prepend MyHelper
  def save
    puts "my code"
  end
end

puts ">> Included module"
p MyBadClass.new.save()

puts ">> Prepended module"
p MyGoodClass.new.save()
