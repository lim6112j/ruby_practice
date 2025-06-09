dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(txt, data)
  data.each_with_object(Hash.new(0)) do |word, result|
    count = txt.downcase.scan(word).count
    result[word] += count if count > 0
  end
end
p substrings("below", dictionary)
p substrings("Howdy partner, sit down! How's it going?", dictionary)
