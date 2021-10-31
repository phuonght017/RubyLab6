# frozen_string_literal: true

# Calculating math functions
class MathFunctions
  Result = Struct.new(:value, :num_iter)

  def cal_func(para, eps)
    return 'Cannot calculate' if para.abs > 1

    cal_func_valid_para(para, eps)
  end

  def cal_func_valid_para(para, eps)
    sum = 0
    iter = 0
    ele = -1
    while ele.abs > eps
      iter += 1
      ele = ((-1)**(iter + 1) * para**(iter * 2 - 1)) / (iter * 2 - 1)
      sum += ele
    end
    Result.new sum, iter
  end
end
