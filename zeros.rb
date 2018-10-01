#!/usr/bin/env ruby

print "Enter factorial value: "
input = gets.chomp.to_i
zeros = 0

for i in (1..input)
  while (i % 5) == 0
    zeros += 1
    i /= 5
  end
end

puts "Trailing zeros in #{input}! is #{zeros}."
