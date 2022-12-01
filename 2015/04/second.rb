#!/usr/bin/env ruby

require 'digest'

secret = ARGV.first
num = 0

num += 1 until Digest::MD5.hexdigest(secret + num.to_s).start_with? "000000"

puts "Lowest number to produce the required hash: #{num}"
puts "Hash: #{Digest::MD5.hexdigest(secret + num.to_s)}"
