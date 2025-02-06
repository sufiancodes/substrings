dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(string, dictionary)
  # taking string and converting all to downcase
  substring = string.downcase
  # loop over each word in the dictionary
  dictionary.each do |word|
    # storing the result of each word matched
    result = substring.match(word)
    puts result.class
  end
end

substrings("Howdy partner, sit down! How's it going?", dictionary)
