# frozen_string_literal: true

require_relative 'math_functions'
puts 'With x = 0.5 Please enter eps = '
eps = gets.chomp.to_f
res = MathFunctions.execute(0.5, eps)
puts "arctan and iteration times: #{res}"
