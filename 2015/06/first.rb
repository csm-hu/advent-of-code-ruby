#!/usr/bin/env ruby

f = File.read(ARGV.first)
lights = Array.new(1000) { Array.new(1000, false) }

f.each_line do |line|
  if line =~ /^turn on (\d+),(\d+) through (\d+),(\d+)$/
    $1.to_i.upto($3.to_i) do |i|
      $2.to_i.upto($4.to_i) do |j|
        lights[i][j] = true
      end
    end
  elsif line =~ /^turn off (\d+),(\d+) through (\d+),(\d+)$/
    $1.to_i.upto($3.to_i) do |i|
      $2.to_i.upto($4.to_i) do |j|
        lights[i][j] = false
      end
    end
  elsif line =~ /^toggle (\d+),(\d+) through (\d+),(\d+)$/
    $1.to_i.upto($3.to_i) do |i|
      $2.to_i.upto($4.to_i) do |j|
        lights[i][j] = !lights[i][j]
      end
    end
  end
end

num_lights = lights.flatten.count(true)

puts "The number of lights that are lit: #{num_lights}"
