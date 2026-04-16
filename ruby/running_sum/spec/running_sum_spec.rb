require './running_sum.rb'

describe 'runnning sum' do
  it 'returns the running sum' do
    nums = [1,2,3,4]
    expect(running_sum(nums)).to eq([1,3,6,10])

    nums = [1,1,1,1,1]
    expect(running_sum(nums)).to eq([1,2,3,4,5])

    nums = [3,1,2,10,1]
    expect(running_sum(nums)).to eq([3,4,6,16,17])
  end
end
