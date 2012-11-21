#!/usr/bin/ruby

# The prime factors of 13195 are 5, 7, 13 and 29.

# What is the largest prime factor of the number 600,851,475,143 ?

# first, find a factor of number

number = 600851475143

def is_prime (number)
  if number % 2 == 0 and number != 2
    p "not prime, divisible by 2"
  elsif number % 3 == 0 and number != 3
    p "not prime, divisible by 3"
  elsif number % 5 == 0 and number != 5
    p "not prime, divisible by 5"
  elsif number % 7 == 0 and number != 7
    p "not prime, divisible by 7"
  else
    divisor = 11
    # from one to the square root of a number is all the numbers it could be divided by
    # because after the square root you're repeating yourself.
    while divisor <= (Math.sqrt(number)).ceil
      # while divisor is less than the square root of the ( smallest integer greater than the number )
      if number % divisor == 0 and number != divisor
        return FALSE
      elsif (Math.sqrt(number)).ceil == divisor
        # if the divisor is equal to the square root of the ( smallest integer greater than the number )
        p "PRIME"
        return TRUE
      else
        # increment the divisor
        divisor = divisor + 1
        p divisor
      end
    end
  end
end

# factor_candidate = 2

# while factor_candidate <= number / 2
#   if number % factor_candidate == 0
#     larger = number / factor_candidate
#     smaller = factor_candidate
#     p "checking for primeability of #{larger}."
#     if is_prime larger
#       p "#{larger} is prime"
#       exit 0
#     else
#       p "#{larger} is not prime."
#     end
#   end
#   factor_candidate += 1
# end

