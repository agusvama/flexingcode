require './counting_vowels.rb'

describe "counting vowels in the substrings from a string" do
  it "returns true if a character is a vowel" do
    expect(is_vowel?('a')).to be_truthy
    expect(is_vowel?('b')).to be_falsey
  end

  it "returns the number of vowels in a given string" do
    expect(count_vowels("banana")).to eq(3)
    expect(count_vowels("string")).to eq(1)
    expect(count_vowels("xxx")).to be_zero
  end

  it "returns an array of triplets from the string, forwards only" do
    expect(triplets("banana")).to eq(["ban", "ana", "nan", "ana"])
  end
end
