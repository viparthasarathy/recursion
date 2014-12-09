def fibs(n)
  return [0] if n == 1
  return [0, 1] if n == 2
  fib_array = [0, 1]
  i = 2

  while i < n
	fib_array[i] = fib_array[i-2] + fib_array[i-1]
	i += 1
  end

  fib_array
end

def fibs_rec(n)
  return 0 if n == 1
  return 1 if n == 2
  fibs_rec(n-1) + fibs_rec(n-2)
end