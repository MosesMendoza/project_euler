#!/bin/ruby

#  If we list all the natural numbers below 10 that are multiples of 3 or 5, we
#  get 3, 5, 6 and 9. The sum of these multiples is 23.
#
#  Find the sum of all the multiples of 3 or 5 below 1000.

multiples = []
sum = 0

(3..999).each do |var|
  if (var % 3 == 0) or (var % 5 == 0)
    multiples << var
    puts var
    sum += var
  end
end
puts "sum is #{sum}"




