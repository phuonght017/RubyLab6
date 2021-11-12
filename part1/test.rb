# frozen_string_literal: true

require_relative 'math_functions'
require 'minitest/autorun'
# Testing class MathFunctions
class TestFunc < MiniTest::Test
  attr_reader :para, :eps

  def setup
    @para = 0.5
    @eps = rand(0.1)
  end

  def test_part
    res = MathFunctions.execute(0.5, eps)
    assert_in_delta res[0], Math.atan(para), eps
  end
end
