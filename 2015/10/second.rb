#!/usr/bin/env ruby

input = ARGV.first

def generate(input)
  input.scan(/((\w)\2*)/).map(&:first).map{|x| "#{x.length}#{x[0]}"}.join
end

50.times do
  input = generate(input)
end

puts input.length
