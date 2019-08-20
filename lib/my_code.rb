def map(source_array)
  new = []
  i = 0
  while i < source_array.length do
    new.push(yield(source_array[i]))
    i += 1
  end
  return new
end


def reduce(source_array, start=0)
	  if start 
	    i = 0 
	    total = start
	  else 
	    total = source_array[0]
	    i = 1 
	  end
	  while i < source_array.length do
	    total = yield(total, source_array[i])
	      i += 1
	  end 
	  total
	end
  