def is_vowel?(char)
  "aeiou".include?(char)
end

def count_vowels(string)
  string.chars.count { |c| is_vowel?(c) }
end

def triplets(string)
  result = []
  for i in 0..string.length - 3
    result << [string[i] , string[i + 1], string[i + 2]].join("")
  end

  result
end

def count_valid_triplets(string)
  triplets(string).select { |t| count_vowels(t) == 2 }.size
end
