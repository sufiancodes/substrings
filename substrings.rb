dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(string, dictionary)
  # taking string and converting all to downcase
  substring = string.downcase
  # loop over each word in the dictionary
  dictionary.each do |word|
    # storing the result of each word matched
    result = substring.match(word)
    matched_array = []
    matched_array.push(result)
    matched_array.compact!
    puts matched_array
  end
end

substrings("Howdy partner, sit down! How's it going?", dictionary)
