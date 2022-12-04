#!/usr/bin/env ruby

f = File.read(ARGV.first)
nice_strings = 0

f.each_line do |line|
  next unless line =~ /[aeiou].*[aeiou].*[aeiou]/
  next unless line =~ /(\w)\1/
  next if line =~ /ab|cd|pq|xy/
  nice_strings += 1
end

puts "Number of nice strings: #{nice_strings}"
