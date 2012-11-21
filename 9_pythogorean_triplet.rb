# A Pythagorean triplet is a set of three natural numbers, a < b < c, for which,
# a^2 + b^2 = c^2
# For example, 3^2 + 4^2 = 9 + 16 = 25 = 5^2

# There exists exactly one Pythagorean triplet for which a + b + c = 1000

# Find the product abc

a = 3
b = 4
c = 5

while (a + b + c) <= 1000
  puts "#{a} #{b} #{c} = #{a + b + c}"

  a = a + 1
  b = b + 1
  c = c + 1
end

