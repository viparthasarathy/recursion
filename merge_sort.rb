

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


