class Array
  def my_uniq
    result = []
    self.each do |el|
      result << el unless result.include?(el)
    end
    result
  end
  
  def two_sum
    result = []
    self.each_with_index do |el, i|
      self.each_with_index do |el1, j|
        result << [i,j].sort if el + el1 == 0 && i != j
      end
    end
    result.uniq
  end
end

# def my_transpose(array)
#   result = []
#   first_row = array[0]
# 
#   first_row.each_with_index do |el, i|
#     col = [el]
#     array[1..-1].each_with_index do |row, j|
#       col << row[j][0]
#     end
#     result << col
#   end
#   result
# end

def my_transpose(rows)
  
  cols = []
  
  i = 0
  
  while i < rows[0].count
    j = 0
    cols[i] = []
    while j < rows.count
      #put i-th entry of each row into one column
      cols[i] << rows[j][i]
      j += 1
    end
    i += 1
  end
  
  return cols
  
  
end

def stock_picker(arr)
  day_pairs = []
  price_pairs = []
  profits = []
  arr.each_with_index do |price, day| 
    arr.each_with_index do |price1, day1|
      if day < day1
        day_pairs << [day,day1]
      end
    end
  end
  
  arr.each_with_index do |price, day| 
    arr.each_with_index do |price1, day1|
      if day < day1
        price_pairs << [price,price1]
      end
    end
  end
  
  price_pairs.each do |pair|
    profit = pair[1] - pair[0]
    profits << profit
  end
  
  most_profit = profits.max
  index = profits.index(most_profit)
  return day_pairs[index]
  
end

