def map(source_array)
  new = []
  i = 0
  while i < source_array.length do
    new.push(yield(source_array[i]))
    i += 1
  end
  return new
end

	
def reduce(array, starting_point=0)
  i = 0
	sum = starting_point
	while i < array.length do
	  sum = sum(yield + (array[i]))
	  i += 1
	end
	return sum
end
  