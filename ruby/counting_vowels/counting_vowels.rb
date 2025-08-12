def is_vowel?(char)
  "aeiou".include?(char)
end

def count_vowels(string)
  string.chars.count { |c| is_vowel?(c) }
end

def triplets(string)
  # banana.chars -> ['b', 'a', 'n', 'a', 'n', 'a']
  string.chars.map { |c| }
end
