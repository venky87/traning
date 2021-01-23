require 'prime'
def prime_numbers(number_of_primes)
  primes = [1, 2]
  first_number = 2
  while(primes.length < number_of_primes)
    first_number += 1
    next if first_number % 10 == 7
    primes.push(first_number) if first_number.prime?
  end

  print primes
  puts nil
end

prime_numbers(5)
prime_numbers(10)
