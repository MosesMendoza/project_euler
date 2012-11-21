# The sum of the squares of the first ten natural numbers is
# 1^2 + 2^2 + ... + 10^2 = 385
#
# The square of the sum of the first ten natural numbers is,
# (1 + 2 + ... + 10)^2 = 55^2 = 3025
#
# Hence the difference between the sum of the squares of the first ten natural numbers and the square of the sum is 3025  385 = 2640.
# Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.

count = 1
sum = 0

# sum of the squares of the first one hundred natural numbers
while count < 101
  sum = sum + (count * count)
  puts "#{count} * #{count} = #{count * count}"
  puts sum
  count = count + 1
end

puts "sum is #{sum}"

# Square of the sum of the first 100 natural numbers

# (1 + N) * (N / 2)

# ( 1 + 100 ) * ( 100 / 2)

temp_sum = (1 + 100) * (100 / 2)

squared_sum = temp_sum * temp_sum
puts "Squared_sum is #{squared_sum}"

puts "Answer is #{squared_sum - sum}"
