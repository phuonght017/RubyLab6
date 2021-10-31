# frozen_string_literal: true

# Calculate sequence -> arctan(0.5)
class SequenceArctan
  include Enumerable
  def each
    para = 0.5
    sum = 0
    iter = 0
    ele = -1
    loop do
      iter += 1
      ele = ((-1)**(iter + 1) * para**(iter * 2 - 1)) / (iter * 2 - 1)
      sum += ele
      yield sum
    end
  end
end
