# frozen_string_literal: true

require_relative 'derivative'
require 'minitest/autorun'
# Testing class Derivative
class TestFunc < MiniTest::Test
  def setup
    @eps = 0.001
  end

  def test_part1
    x0 = 0.49
    x1 = 0.5
    x2 = 0.51
    res = Derivative.new.differ(x0, x1, x2) { |x| Math.sin(x) }
    assert_in_delta res.dy0, Math.cos(x0), @eps
    assert_in_delta res.dy1, Math.cos(x1), @eps
    assert_in_delta res.dy2, Math.cos(x2), @eps
  end

  def test_part2
    x0 = 0.05
    x1 = 0.06
    x2 = 0.07
    res = Derivative.new.differ(x0, x1, x2) { |x| Math.cos(x) }
    assert_in_delta res.dy0, - Math.sin(x0), @eps
    assert_in_delta res.dy1, - Math.sin(x1), @eps
    assert_in_delta res.dy2, - Math.sin(x2), @eps
  end
end
