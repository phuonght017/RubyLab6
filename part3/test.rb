# frozen_string_literal: true

require_relative 'derivative'
require 'minitest/autorun'
# Testing class Derivative
class TestFunc < MiniTest::Test
  attr_reader :eps, :x0, :x1, :x2

  def setup
    @eps = 0.001
    @x0 = rand(0.6)
    @x1 = x0 + 0.01
    @x2 = x1 + 0.01
  end

  def test_part1
    res = Derivative.new(x0, x1, x2).differ { |x| Math.sin(x) }
    assert_in_delta res[0], Math.cos(x0), @eps
    assert_in_delta res[1], Math.cos(x1), @eps
    assert_in_delta res[2], Math.cos(x2), @eps
  end
end
