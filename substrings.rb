dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def count_times_sub_str_appear(str, substr)
  # substring matching
  str.scan(/(?=#{substr})/).count
end


def substrings(string, dictionary)
  # taking string and converting all to downcase
  given_string = string.downcase
  array = []
  hash = {}
  # looping over whole dictionary 
  dictionary.each do |word|
    # checking if current word match
    given_string.match(word)
    # extract actual string matched
    result = $&
    # push it in array
    array.push(result)
    # remove nil values
    array.compact!  
  end
  # loop over array
  array.each do |word|
    # add each element in array as key its occurrence as value
    hash[word] = count_times_sub_str_appear(given_string, word)
  end
  puts hash
end


substrings("below", dictionary)
