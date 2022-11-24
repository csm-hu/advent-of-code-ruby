#!/usr/bin/env ruby

f = File.read(ARGV.first)
length = 0

f.each_line do |line|
  x, y, z = line.split('x').map(&:to_i).sort
  length += 2 * (x + y) + (x * y * z)
end

puts "Ribbon needed: #{length}."
