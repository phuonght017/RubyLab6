# frozen_string_literal: true

require_relative 'derivative'
x0 = 0.49
x1 = 0.5
x2 = 0.51
puts 'y(x) = sin (x)'
res = Derivative.new(x0, x1, x2).differ { |x| Math.sin(x) }
puts "Result: y0' = #{res[0]} ; y1' = #{res[1]}; y2' = #{res[2]}"
puts 'y(x) = tan (x+1)'
pr = proc { |x| Math.tan(x + 1) }
res = Derivative.new(x0, x1, x2).differ(&pr)
puts "Result: y0' = #{res[0]} ; y1' = #{res[1]}; y2' = #{res[2]}"
