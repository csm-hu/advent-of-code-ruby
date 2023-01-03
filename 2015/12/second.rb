#!/usr/bin/env ruby

require 'json'

input = JSON.parse(ARGF.read)
$sum = 0

def count(i)
  return if i.is_a? Hash and i.values.include?('red')

  (i.is_a?(Array) ? i : i.values).each { |y| count(y) } if i.class.method_defined? :each
  $sum += i if i.is_a? Integer
end

count(input)
puts "The sum of all numbers excluding red is #{$sum}"
