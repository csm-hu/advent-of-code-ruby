#!/usr/bin/env ruby

f = File.read(ARGV.first)
area = 0

f.each_line do |line|
  x, y, z = line.split('x').map(&:to_i).sort
  area += 2 * (x * y + x * z + y * z) + (x * y)
end

puts "Wrapping paper needed: #{area}."
