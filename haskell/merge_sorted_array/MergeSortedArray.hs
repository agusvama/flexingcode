module MergeSortedArray where
import Data.List

-- nums1.length = m + n
-- nums2.length = n
-- m = elements that should be merged
-- merge nums1 m nums2 n =
--   | nums2 !! b > nums1 !! a = merge ()
--   where a = m - 1 -- points to last non-zero element of nums1
--         b = n - 1 -- points to last non-zero element of nums2
--         c = m + (n - 1) -- last zero element of nums1 (tail)
merge nums1 nums2 = sort $ [x | x <- nums1 ++ nums2, x > 0]
