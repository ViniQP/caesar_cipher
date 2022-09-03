def sub_strings (string, dictionary)
  dictionary_hash = Hash.new(0)
  formated_string = string.downcase.gsub(/[^0-9A-Za-z\s+]/, '')
  dictionary.each do|word|
    formated_string.scan(word) do |found_string|
      dictionary_hash[found_string] += 1
    end
  end
  dictionary_hash
end


dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
p sub_strings("Howdy partner, sit down! How's it going?", dictionary)
