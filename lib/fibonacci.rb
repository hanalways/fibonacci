# Computes the nth fibonacci number in the series starting with 0.
# fibonacci series: 0 1 1 2 3 5 8 13 21 ...
# e.g. 0th fibonacci number is 0
# e.g. 1st fibonacci number is 1
# ....
# e.g. 6th fibonacci number is 8

# Time complexity: O(n), where n is the the number of values in the array
# Space complexity: O(c), where c is the integers that are being rewritten

def fibonacci(n)
  if n == nil || n < 0
    raise ArgumentError, "Invalid input for n, #{n}"
  elsif n == 0 || n == 1
    return n
  else
    fib_num_prev = 0 # 2
    fib_num_curr = 1 # 3
    fib_num_next = 0 # 3

    (n-1).times do
      fib_num_next = fib_num_prev + fib_num_curr
      fib_num_prev = fib_num_curr
      fib_num_curr = fib_num_next
    end

    return fib_num_next
  end
end