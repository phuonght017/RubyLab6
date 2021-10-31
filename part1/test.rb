# frozen_string_literal: true

require_relative 'math_functions'
require 'minitest/autorun'
# Testing class MathFunctions
class TestFunc < MiniTest::Test
  def setup
    @rand_para = rand(-1..1)
    @rand_eps = rand(0.1)
  end

  def test_parta
    eps = 0.0001
    res = MathFunctions.new.cal_func(0.5, eps)
    assert_in_delta res.value, Math.atan(0.5), eps
  end

  def test_partb
    eps = 0.00001
    res = MathFunctions.new.cal_func(0.5, eps)
    assert_in_delta res.value, Math.atan(0.5), eps
  end

  def test_partc
    eps = @rand_eps
    para = @rand_para
    res = MathFunctions.new.cal_func(para, eps)
    assert_in_delta res.value, Math.atan(para), eps
  end
end
