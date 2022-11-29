#!/usr/bin/env ruby

f = File.read(ARGV.first)

presents = Hash.new(0)
x = 0
y = 0

presents[{x:, y:}] += 1

f.each_char do |c|
  case c
  when '^'
    x += 1
  when 'v'
    x -= 1
  when '>'
    y += 1
  when '<'
    y -= 1
  end
  presents[{x:, y:}] += 1
end

puts "Number of houses that receive at least one present: #{presents.length}"
