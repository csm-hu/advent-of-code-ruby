#!/usr/bin/env ruby

string_code = 0
string_value = 0

ARGF.each_line(chomp: true) do |line|
  string_code += line.length
  string_value += eval(line).length
end

puts "The difference is #{string_code - string_value}"
