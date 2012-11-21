# The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.
# Find the sum of all the primes below two million.

early_primes = [1,2,3,5,7,11]
def is_prime (number)
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
    root = (Math.sqrt(number)).ceil
    while divisor <= root
      # while divisor is less than the square root of the ( smallest integer greater than the number )
      if number % divisor == 0 and number != divisor
        return FALSE
      elsif root == divisor
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
prime = 0
sum = 0

while count < 2000000
  count = count + 1
  if is_prime count
    puts count
    sum = sum + count
  end
end
puts sum
#a = 0
#primes.each{|x| a = a + x }
#puts a
