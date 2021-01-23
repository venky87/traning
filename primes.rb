require 'prime'
primes = [1, 2]
first_number = 2
x = true

while x
  first_number += 1
  break if first_number % 10 == 7
  primes.push(first_number) if first_number.prime?
end
print primes
puts nil
