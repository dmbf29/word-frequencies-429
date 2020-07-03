def histogram(text)
  # create an empty hash
  # split the text into an array of words
  # iterate through the array word by word
  # do hash[key] +=1
  # what if we increment nil ?
  # end loop and return hash
  word_count = Hash.new(0)
  text.downcase.split(/\W/).each { |word| word_count[word] += 1 }
  word_count
end
