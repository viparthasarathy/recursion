# def merge_sort(array, empty_array=[])
#   empty_array ||= []
#   a = array[0...array.length/2]
#   b = array[array.length/2...array.length]
#   if a.length == 1 and b.length == 1
#   	if a[0] < b[0]
#   	  empty_array.push(a[0])
#   	else
#   	  empty_array.push(b[0])
#   	end

#   else
#   	merge_sort(a, empty_array)
#   	merge_sort(b, empty_array)
#   end

def merge_sort(array)
  return array if array.length == 1 	
  m = array.length/2
  left = merge_sort(array[0...m])
  right = merge_sort(array[m...array.length])
  merge(left, right)

end

def merge(left, right)
  if left.empty?
  	right
  elsif right.empty?
  	left
  elsif left[0] < right[0]
  	[left[0]] + merge(left[1...left.length], right)
  else
  	[right[0]] + merge(left, right[1...right.length])
  end
end


