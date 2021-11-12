# frozen_string_literal: true

# Calculating deriative of three adjacent numbers
class Derivative
  attr_accessor :x0_val, :x1_val, :x2_val

  def initialize(x0_val, x1_val, x2_val, &block)
    @x0_val = x0_val
    @x1_val = x1_val
    @x2_val = x2_val
  end

  def differ
    arr_x = [x0_val, x1_val, x2_val]
    y = arr_x.map { |x| yield x }
    cal_dy(y[0], y[1], y[2], x1_val - x0_val)
  end

  def cal_dy(yy0, yy1, yy2, step)
    dy0 = cal_d1(yy0, yy1, yy2, step)
    dy1 = cal_d2(yy0, yy2, step)
    dy2 = cal_d3(yy0, yy1, yy2, step)
    [dy0, dy1, dy2]
  end

  def cal_d1(yy0, yy1, yy2, step)
    (-3 * yy0 + 4 * yy1 - yy2) / (2 * step)
  end

  def cal_d2(yy0, yy2, step)
    (- yy0 + yy2) / (2 * step)
  end

  def cal_d3(yy0, yy1, yy2, step)
    (yy0 - 4 * yy1 + 3 * yy2) / (2 * step)
  end
end
