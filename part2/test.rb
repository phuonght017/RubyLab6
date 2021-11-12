# frozen_string_literal: true

require_relative 'sequence_arctan'
require 'minitest/autorun'
# Testing class MathFunctions
class TestFunc < MiniTest::Test
  attr_reader :eps, :arctan

  def setup
    @eps = rand(0.1)
    @arctan = Math.atan(0.5)
  end

  def test_part
    res = SequenceArctan.new.find { |seq| (seq - arctan).abs <= eps }
    assert_in_delta res, arctan, eps
  end
end
