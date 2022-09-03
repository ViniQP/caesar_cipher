def caesar_cipher(string, key)
  string_ord = []
  splitted_string = string.split("")

  # convert split string to integer ordinal 
  splitted_string.each { |letter| string_ord.push(letter.ord)}
  
  # sum key to array converted values
  string_ord_key = string_ord.map do |integer|
    sum_index = integer + key
    if integer < 65 || integer > 122
      integer
    elsif integer.between?(65, 90)
      if sum_index <= 90
        integer += key
      elsif sum_index > 90
        sum = integer + (key - 1)
        sum -= 90
        integer = 65 + sum
      end
    elsif integer.between?(97, 122)
      if sum_index <= 122
        integer += key
      elsif sum_index > 122
        sum = integer + (key - 1)
        sum -= 122
        integer = 97 + sum
      end
    end
  end

  # convert to string and return it
  string_ord_key.map { |integer| integer.chr }.join
end

puts caesar_cipher("What a string!", 5)