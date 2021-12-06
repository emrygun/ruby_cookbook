s = 'A string'
length_method = s.method(:length)
p length_method.arity

p length_method.call
p length_method.arity

# EventSpawner and EventListener
#
class EventSpawner

  def initialize
    @listeners = []
    @state = 0
  end

  def subscribe(&listener)
    @listeners << listener
  end

  def change_state(new_state)
    @listeners.each { |l| l.call(@state, new_state) }
    @state = new_state
  end

end

class EventListener

  def hear(old_state, new_state)
    puts "Method triggered: state changed from #{old_state} to #{new_state}"
  end

end

spawner = EventSpawner.new

spawner.subscribe do | old_state, new_state |
  puts "Block triggered: state changed from #{old_state} to #{new_state}"
end

spawner.subscribe &EventListener.new.method(:hear)
spawner.change_state(4)

