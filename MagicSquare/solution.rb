class Matrix

  def initialize(list)
    @matrix = list
  end

  def sum_of_rows
   @matrix.map { |element| element.inject(:+) }
  end

  def sum_of_columns
    @matrix.transpose.map { |element| element.inject(:+) }
  end

  def sum_of_main_diagonal
    (0...@matrix.size).map { |index| @matrix[index][index] }.inject(:+)
  end

  def sum_of_secondary_diagonal
    (0...@matrix.size).map { |index| @matrix.transpose[index][index] }.inject(:+)
  end

  def row_sum
    sum_of_rows.uniq.size > 1 ? nil : sum_of_rows.first
  end

  def column_sum
    sum_of_columns.uniq.size > 1 ? nil : sum_of_columns.first
  end

  def diagonal_sum
    sum_of_main_diagonal == sum_of_secondary_diagonal ? sum_of_main_diagonal : nil
  end

end

module Magic

  def self.magic_square?(list)
    matrix = Matrix.new list
    matrix.row_sum == matrix.column_sum and matrix.column_sum == matrix.diagonal_sum
  end

end

