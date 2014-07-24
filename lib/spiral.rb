class Spiral

  def self.create(start, width)
    array = []
    width.times {
      row = []
      width.times { row << nil }
      array << row
    }
    max_row = width
    max_column = width
    min_row = 0
    min_column = -1
    row_index = 0
    column_index = 0
    number = start
    while number < (start+(width*width)) do
      while column_index < max_column do
        array[row_index][column_index] = number
        number += 1
        column_index += 1
      end
      column_index -= 1
      row_index += 1
      max_column -= 1
      while row_index < max_row do
        array[row_index][column_index] = number
        number += 1
        row_index += 1
      end
      row_index -= 1
      column_index -= 1
      max_row -= 1
      while column_index > min_column
        array[row_index][column_index] = number
        number += 1
        column_index -= 1
      end
      min_column += 1
      column_index += 1
      row_index -= 1
      while row_index > min_row
        array[row_index][column_index] = number
        number += 1
        row_index -= 1
      end
      min_row += 1
      row_index += 1
      column_index += 1
    end
    array
  end
end