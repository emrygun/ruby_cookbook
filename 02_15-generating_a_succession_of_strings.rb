#generates via :succ
('aa'..'ag').each {|x| puts x}

def endless_sting_succession(start)
  while true
    yield(start)
    start = start.succ
  end
end

puts

puts ">> With enless successor"
endless_sting_succession('arv') do |x|
  puts x
  break if x[-1] == x[-2]
end
