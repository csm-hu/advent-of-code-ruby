#!/usr/bin/env ruby

f = File.read(ARGV.first)
floor = 0
position = 1

f.each_char do |c|
  case c
  when '('
    floor += 1
  when ')'
    floor -= 1
  end
  break if floor == -1
  position += 1
end

puts "Position: #{position}"
