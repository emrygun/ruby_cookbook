class Hash

  def delete_value(value)
    delete_if { |k, v| v == value }
  end

  def remove_hash(other_hash)
    delete_if { |k, v| other_hash[k] == v; }
  end

end

h = {'apple' => 'green', 'potato' => 'red', 'sun' => 'yellow', 'katydid' => 'green' }
h.delete_value('green')
p h

k = {'potato' => 'red'}
h.remove_hash(k)
p h

