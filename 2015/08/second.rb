#!/usr/bin/env ruby

string_code = 0
string_encoded = 0

ARGF.each_line(chomp: true) do |line|
  string_code += line.length
  string_encoded += line.dump.length
end

puts "The difference is #{string_encoded - string_code}"
