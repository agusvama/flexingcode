# Merge nums1 and nums2 into a single array sorted in non-decreasing order.
# Remove zeros
def merge(nums1, nums2)
  nums1.concat(nums2).sort.select { |n| !n.zero? }
end
