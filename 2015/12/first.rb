#!/usr/bin/env ruby

sum = ARGF.read.gsub(/[^-0-9]+/, ' ').split.map(&:to_i).reduce(:+)

puts "The sum of all numbers is #{sum}"
