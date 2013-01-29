class Branch
  attr_accessor :length :weight

  def initialize(length, weight)
    @length = length
    @wieight = weight
  end

  def moment
    length * weight
  end
end

class BinaryMobile < Branch
  attr_accessor :left_branch, :right_branch

  def initialize(left_branch, right_branch)
    @left_branch = left_branch
    @right_branch = right_branch
  end

  def weight
    left_branch.weight + right_branch.weight
  end

  def balanced?
    left_branch.moment == right_branch.moment
  end
end
