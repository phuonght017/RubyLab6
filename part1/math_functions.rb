# frozen_string_literal: true

# Calculating math functions
class MathFunctions
  class << self
    def execute(para, eps)
      new(para, eps).send :cal_func
    end
  end

  private

  attr_accessor :para, :eps

  def initialize(para, eps)
    @para = para
    @eps = eps
  end

  def cal_func
    return 'Cannot calculate' if @para.abs > 1

    cal_func_valid_para
  end

  def cal_func_valid_para
    sum = 0
    iter = 0
    ele = -1
    while ele.abs > @eps
      iter += 1
      ele = ((-1)**(iter + 1) * @para**(iter * 2 - 1)) / (iter * 2 - 1)
      sum += ele
    end
    [sum, iter]
  end
end
