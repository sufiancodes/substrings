dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def count_times_sub_str_match(str, substr)
  # this method counts how many times a given substring match
  str.scan(/(?=#{substr})/).count
end


def substrings(string, dictionary)
  # taking string and converting all to downcase
  given_string = string.downcase
  # loop over each word in the dictionary
  array = []
  dictionary.each do |word|
    given_string.match(word)
    result = $&
    array.push(result)
    array.compact!
  end
  p array
  array.each do |word|
        count_times_sub_str_match(given_string, word)
  end
end


substrings("below", dictionary)
