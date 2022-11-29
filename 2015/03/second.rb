#!/usr/bin/env ruby

f = File.read(ARGV.first)

presents = Hash.new(0)
santa = 0
positions = [{x: 0, y: 0}, {x: 0, y: 0}]

presents[positions[santa].clone] += 1

f.each_char do |c|
  case c
  when '^'
    positions[santa][:x] += 1
  when 'v'
    positions[santa][:x] -= 1
  when '>'
    positions[santa][:y] += 1
  when '<'
    positions[santa][:y] -= 1
  end
  presents[positions[santa].clone] += 1
  santa ^= 1
end

puts "Number of houses that receive at least one present: #{presents.length}"
