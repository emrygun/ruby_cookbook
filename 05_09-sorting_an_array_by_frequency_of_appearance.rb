module Enumerable

  def sort_by_frequency
    histogram = inject(Hash.new(0)) { |hash, x| hash[x] += 1; hash }
    #Sorting by two criteria
    sort_by { |x| [x, histogram[x]] }
  end

end

p [1,2,3,4,1,2,4,8,1,4,9,16].sort_by_frequency
