# frozen_string_literal: true

require_relative 'sequence_arctan'
puts 'With x = 0.5 Please enter eps = '
eps = gets.chomp.to_f
arctan = Math.atan(0.5)
res = SequenceArctan.new.find { |seq| (seq - arctan).abs <= eps }
puts "arctan = #{res}"
