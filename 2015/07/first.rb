#!/usr/bin/env ruby

class Circuit
  TRANSFORMATIONS = {
    'LSHIFT' => '<<',
    'RSHIFT' => '>>',
    'NOT'    => '~',
    'AND'    => '&',
    'OR'     => '|',
    /\b([a-z]+)\b/  => '\\1_'
  }

  def add(line)
    TRANSFORMATIONS.each do |from, to|
      line.gsub!(from, to)
    end

    exp, name = line.strip.split(' -> ')

    method = "def #{name}; @#{name} ||= #{exp}; end"

    instance_eval method
  end
end

circuit = Circuit.new

ARGF.each_line do |line|
  circuit.add(line)
end

puts "The signal provided to wire a: #{circuit.a_}"
