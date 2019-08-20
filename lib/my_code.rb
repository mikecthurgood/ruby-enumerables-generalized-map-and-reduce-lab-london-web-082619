def map(source_array)
  new = []
  i = 0
  while i < source_array.length do
    new.push(yield(source_array[i]))
    i += 1
  end
  return new
end

def reduce(array, starting_value = nil)
	if starting_value
	  reduced = starting_value
	  i = 0
	else
	  reduced = array[0]
	  i = 1
	end
	
	while i < array.length
	  reduced = yield(reduced, array[i])
	  i += 1
	end
	return reduced
end