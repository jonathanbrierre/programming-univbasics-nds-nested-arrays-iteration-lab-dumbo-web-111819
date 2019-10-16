def join_ingredients(src)
  # Given an Array of 2-element Arrays ( [ [food1, food2], [food3, # food4]....[foodN, foodM]]):
  #
  # Build a new Array that contains strings where each pair of foods is
  # inserted into this template:
  #
  # "I love (inner array element 0) and (inner array element 1) on my pizza""
  # As such, there should be a new String for each inner array, or pair
  array_1 = [
    ["pepperoni","sausage"],
    ["green olives","green peppers"],
    ["onions","pineapple"]
    ]
  
  outer_array = []
  row_index = 0 
  while row_index < array_1.count do 
    element_index = 0 
    if element_index < array_1[row_index].count 
      outer_array << "I love #{array_1[row_index][element_index]} and #{array_1[row_index][element_index += 1]} on my pizza"
    end
    row_index += 1
  end
  outer_array
end

def find_greater_pair(src)
  # src will be an array of [ [number1, number2], ... [numberN, numberM] ]
  # Produce a new Array that contains the larger number of each of the pairs
  # that are in the inner Arrays
  src = [ 
    [-1,-4],
    [30,14],
    [0,-6],
    [14,8],
    [19,5]
    ]
    
  larger_number_array = []
  row_index = 0 
  while row_index < src.count do
    element_index = 0 
    if element_index < src[row_index].count
      src[row_index].sort!
      larger_number_array << src[row_index].pop
    end 
    row_index += 1
  end
  larger_number_array
end

def total_even_pairs(src)
  # src will be an array of [ [number1, number2], ... [numberN, numberM] ]
  # if both numbers in the pair are even, then add both those numbers to the
  # total
  #
  # As a reminder any number % 2 will return 0 or 1. If the result is 0, then
  # the number was even. Review the operator documentation if you've forgotten
  # this!
  src = [
    [0,172406],
    [-2,172408],
    ]
  
  even_number_array = []
  total = 0  
  row_index = 0 
  while row_index < src.count do 
    element_index = 0 
    if element_index < src[row_index].count
      if (src[row_index][element_index]%2 == 0 && src[row_index][element_index + 1]%2 == 0) 
        both_even_sum = src[row_index][element_index] + src[row_index][element_index+1]
        even_number_array << both_even_sum
      end  
    row_index += 1 
    end
  end
  total = even_number_array.sum
end
