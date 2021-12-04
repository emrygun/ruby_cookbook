s = "HELLO, I am not here. I WENT to tHe MaRKEt"

puts ">> Knonw way"
p s.upcase
p s.downcase
p s.swapcase
p s.capitalize

puts ">> Alternatives"

class String

  def capitalize_first_letter
    self[0].capitalize + self[1, size]
  end

  def capitalize_first_letter!
    unless self[0] == (c = self[0, 1].upcase)
      self[0] = c
    end
  end

end

s = 'i told Alice. She remembers now.'
p s.capitalize_first_letter

s.capitalize_first_letter!

p s

p 'LOWERCASE ALL VOWELS'.tr('AEIOU', 'aeiou')

p 'Swap case of ALL WOVELS'.tr('AEIOUaeiou', 'aeiouAEIOU')
