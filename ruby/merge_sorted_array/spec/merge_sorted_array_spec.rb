require './merge_sorted_array.rb'

describe 'merge sorted array' do
  it 'merges two arrays in ascending order' do
    # arrange
    nums1 = [1,2,3,0,0,0]
    nums2 = [2,5,6]

    # act
    result = merge(nums1, nums2)

    # assert
    expect(result).to eq([1,2,2,3,5,6])
  end
end
