require './reverse_string.rb'

describe 'reverse string' do
  it 'returns new string with chunks reversed' do
    # arrange
    s = 'abcdefg'
    k = 2

    # act
    result = reverse_string(s, k)

    # assert
    expect(result).to eq('bacdfeg')
  end
end
