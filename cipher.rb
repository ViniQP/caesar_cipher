def caesar_cipher(string, key)
  string_ord = []
  splitted_string = string.downcase.split("")

  p splitted_string
  # convert split string to integer ordinal 
  splitted_string.each do |letter|
    string_ord.push(letter.ord)
  end
  p string_ord
  
  # sum key to string.ord() array values
  string_ord_key = string_ord.map do |integer|
    sum_index = integer + key
    if integer < 96 
      integer
    elsif sum_index <= 122
      integer += key
    elsif sum_index > 122
      sum = integer + (key - 1)
      sum -= 122
      integer = 97 + sum
    end
  end

  p string_ord_key

  # convert to caesar string and return string
  converted_caesar = string_ord_key.map do |integer|
    integer.chr
  end
  return converted_caesar.join
end

puts caesar_cipher("what a string!", 5)