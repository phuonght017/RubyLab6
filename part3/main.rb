# frozen_string_literal: true

require_relative 'derivative'
x0 = 0.49
x1 = 0.5
x2 = 0.51
puts 'y(x) = sin (x)'
res = Derivative.new.differ(x0, x1, x2) { |x| Math.sin(x) }
puts "Call with block: y0' = #{res.dy0} ; y1' = #{res.dy1}; y2' = #{res.dy2}"
res = Derivative.new.differ(x0, x1, x2, ->(x) { Math.sin(x) })
puts "Call with lambda: y0' = #{res.dy0} ; y1' = #{res.dy1}; y2' = #{res.dy2}"
puts 'y(x) = tan (x+1)'
res = Derivative.new.differ(x0, x1, x2) { |x| Math.tan(x + 1) }
puts "Call with block: y0' = #{res.dy0} ; y1' = #{res.dy1}; y2' = #{res.dy2}"
res = Derivative.new.differ(x0, x1, x2, ->(x) { Math.tan(x + 1) })
puts "Call with lambda: y0' = #{res.dy0} ; y1' = #{res.dy1}; y2' = #{res.dy2}"
