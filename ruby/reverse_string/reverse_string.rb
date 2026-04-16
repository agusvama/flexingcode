# Given a string s and an integer k,
# reverse the first k characters
# for every 2k characters counting from the start of the string.
def reverse_string(s, k)
  s.chars # transform to array
    .each_slice(2 * k) # get chunks [["a", "b", "c", "d"], ["e", "f", "g"]]
    .map { |chunk| chunk.take(k).reverse + chunk.drop(k) } # [["b", "a", "c", "d"], ["f", "e", "g"]]
    .flatten # merge all in a single array ["b", "a", "c", "d", "f", "e", "g"]
    .join # convert to string
end
