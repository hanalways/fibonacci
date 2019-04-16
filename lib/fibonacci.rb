# Computes the nth fibonacci number in the series starting with 0.
# fibonacci series: 0 1 1 2 3 5 8 13 21 ...
# e.g. 0th fibonacci number is 0
# e.g. 1st fibonacci number is 1
# ....
# e.g. 6th fibonacci number is 8

# Time complexity: O(n), where n is the the number of values in the array
# Space complexity: O(n), where n is the number of values in the array
def fibonacci(n)
  if n == nil || n < 0
    raise ArgumentError, "Invalid input for n, #{n}"
  elsif n == 0 || n == 1
    return n
  else
    array = [0, 1]

    (n-2).times do
      num = array[-1] + array[-2]
      array << num
    end

    return array[n]
  end
end
