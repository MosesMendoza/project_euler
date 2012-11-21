#!/usr/bin/ruby

# The prime factors of 13195 are 5, 7, 13 and 29.

# What is the largest prime factor of the number 600,851,475,143 ?

# first, find a factor of number

#number = 600851475143

def is_prime (number)
  if [1,2,3,5,7,11].include?(number)
    return TRUE
  end
  if number % 2 == 0 and number != 2
    # p "not prime, divisible by 2"
    return FALSE
  elsif number % 3 == 0 and number != 3
    # p "not prime, divisible by 3"
    return FALSE
  elsif number % 5 == 0 and number != 5
    # p "not prime, divisible by 5"
    return FALSE
  elsif number % 7 == 0 and number != 7
    # p "not prime, divisible by 7"
    return FALSE
  else
    divisor = 2
    # from one to the square root of a number is all the numbers it could be divided by
    # because after the square root you're repeating yourself.
    while divisor <= (Math.sqrt(number)).ceil
      # while divisor is less than the square root of the ( smallest integer greater than the number )
      if number % divisor == 0 and number != divisor
        return FALSE
      elsif (Math.sqrt(number)).ceil == divisor
        # if the divisor is equal to the square root of the ( smallest integer greater than the number )
        return TRUE
      else
        # increment the divisor
        divisor = divisor + 1
      end
    end
  end
end

count = 0
primes = 0
num = 0

while primes <= 10001
  puts "#{count}"
  count = count + 1
  if is_prime count
    puts "#{primes} - #{count}"
    break if (primes == 10001)
    primes = primes + 1
  end
end
puts "The #{primes}th prime is #{count}"


