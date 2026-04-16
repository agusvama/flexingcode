require './rotate_array.rb'

describe 'rotate array' do
  it 'rotates the array to the right in the given steps' do
    # arrange
    nums = [1,2,3,4,5,6,7]
    steps = 3

    # act
    result = rotate(nums, steps)

    # assert
    expect(result).to eq([5,6,7,1,2,3,4])
  end
end
