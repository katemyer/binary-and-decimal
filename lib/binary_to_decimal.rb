# A method named `binary_to_decimal` that receives as input an array of size 8.
# The array is randomly filled with 0’s and 1’s.
# The most significant bit is at index 0.
# The least significant bit is at index 7.
# Calculate  and return the decimal value for this binary number using
# the algorithm you devised in class.

binary_array = []
8.times do
  binary_array << rand(0..1)
end

puts binary_array

# Calculate  and return the decimal value for this binary number using
# the algorithm you devised in class.

def binary_to_decimal(binary_array)
  bit_number = binary_array.length
  decimal_number = 0

  bit_number.times do |index|
      decimal_number += binary_array[(bit_number - index) - 1] * (2 ** index)
  end
  return decimal_number
end

puts binary_to_decimal([0,0,0,1,1,1,1,0])