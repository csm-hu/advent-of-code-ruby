#!/usr/bin/env ruby

input = +ARGV.first
straights = Regexp.union ('a'..'z').to_a.each_cons(3).map(&:join)

loop do
  input.succ!
  break if input[straights] && input !~ /[iol]/ && input.scan(/(.)\1/).uniq.size > 1
end

puts "The next password is: #{input}"
