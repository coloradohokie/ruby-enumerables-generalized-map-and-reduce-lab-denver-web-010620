def map(array)
  i=0
  new_array = []
  while i < array.length do
    new_array.push(yield(array[i]))
    i += 1
  end #while
  return new_array
end #method



def reduce(array, starting_point=nil)
  new_array = array
  if starting_point
    new_array.shift(starting_point)
  end
    
  total = new_array[0]
  i=1
  
  
  while i < new_array.length do
    total = yield(total, new_array[i])
    i += 1
  end #while
  return total
end #method


=begin    
def reduce(array, starting_point=nil)
  if starting_point
    total = starting_point
    i=0
    
  else
    total = array[0]
    i=1
  end
  
  while i < array.length do
    total = yield(total, array[i])
    i += 1
  end #while
  return total
end #method
=end

