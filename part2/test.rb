# frozen_string_literal: true

require_relative 'sequence_arctan'
require 'minitest/autorun'
# Testing class MathFunctions
class TestFunc < MiniTest::Test
  def setup
    @rand_eps = rand(0.1)
    @arctan = Math.atan(0.5)
  end

  def test_parta
    eps = 0.0001
    res = SequenceArctan.new.find { |seq| (seq - @arctan).abs <= eps }
    assert_in_delta res, @arctan, eps
  end

  def test_partb
    eps = 0.00001
    res = SequenceArctan.new.find { |seq| (seq - @arctan).abs <= eps }
    assert_in_delta res, @arctan, eps
  end

  def test_partc
    eps = @rand_eps
    res = SequenceArctan.new.find { |seq| (seq - @arctan).abs <= eps }
    assert_in_delta res, @arctan, eps
  end
end
