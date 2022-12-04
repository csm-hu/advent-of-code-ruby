#!/usr/bin/env ruby

f = File.read(ARGV.first)
lights = Array.new(1000) { Array.new(1000, 0) }

f.each_line do |line|
  if line =~ /^turn on (\d+),(\d+) through (\d+),(\d+)$/
    $1.to_i.upto($3.to_i) do |i|
      $2.to_i.upto($4.to_i) do |j|
        lights[i][j] += 1
      end
    end
  elsif line =~ /^turn off (\d+),(\d+) through (\d+),(\d+)$/
    $1.to_i.upto($3.to_i) do |i|
      $2.to_i.upto($4.to_i) do |j|
        lights[i][j] = [lights[i][j] - 1, 0].max
      end
    end
  elsif line =~ /^toggle (\d+),(\d+) through (\d+),(\d+)$/
    $1.to_i.upto($3.to_i) do |i|
      $2.to_i.upto($4.to_i) do |j|
        lights[i][j] += 2
      end
    end
  end
end

brightness = lights.flatten.sum

puts "The number of lights that are lit: #{brightness}"
