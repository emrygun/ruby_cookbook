coordinates = [10, 5]
treasure_map = { coordinates => 'jewels' }

p treasure_map[coordinates]

coordinates << -1

treasure_map.rehash
p treasure_map[coordinates]

# Deep dive

module ReliablyHashable
  def hash
    return object_id
  end
end

class ReliablyHashableArray < Array
  include ReliablyHashable
end

coordinates = ReliablyHashableArray.new([10, 5])
treasure_map = { coordinates => 'jewels' }
p treasure_map[coordinates]

coordinates.push(-5)
p treasure_map[coordinates]
