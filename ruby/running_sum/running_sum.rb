# Given an array nums. We define a running sum of an array as runningSum[i] = sum(nums[0]…nums[i]).
def running_sum(nums)
  sum = 0

  nums.map { |n| sum += n }
end
