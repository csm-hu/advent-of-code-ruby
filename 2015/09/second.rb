#!/usr/bin/env ruby

distances = {}

ARGF.each_line(chomp: true).map(&:split).each do |x, _, y, _, d|
  distances[[x, y].sort] = d.to_i
end

results = distances.keys.flatten.uniq.permutation.map do |route|
  route.each_cons(2).reduce(0) do |s, x|
    s + distances[x.sort]
  end
end

puts "Distance of the shortest route: #{results.max}"
