require 'debugger'
def substrings(string)
  substrings = []
  start = 0
  while start < string.size
    ending = start
    while ending < string.size
      substrings << string[start..ending]
      ending += 1
    end
    start += 1
  end
  substrings.uniq
end

def subwords(words)
  dictionary = File.readlines('dictionary.txt')

  substring = substrings(words)
  results = []
  debugger
  substring.each do |word|

    if dictionary.include?(word + "\n")
      if word.size > 1 || word == "i" || word == "a"
        results << word
      end
    end
  end
  results
end