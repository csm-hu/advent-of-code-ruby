#!/usr/bin/env ruby

f = File.read(ARGV.first)
puts "Floor: #{f.count('(') - f.count(')')}"
