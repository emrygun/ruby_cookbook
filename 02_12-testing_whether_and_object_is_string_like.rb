p 'A string'.respond_to? :to_str
p Exception.new.respond_to? :to_str
p 4.respond_to? :to_str

def join_to_successor(s)
  raise ArgumentError, 'No successor method!' unless s.respond_to? :succ
  return "#{s}#{s.succ}"
end

p join_to_successor('a')
p join_to_successor(4)
p join_to_successor(4.01)
