module MergeSortedArraySpec where
import MergeSortedArray
import Test.Hspec

main = hspec $ do
  describe "merge" $ do
    it "merges two arrays" $ do
      merge [1,2,3,0,0,0] [2,5,6]
        `shouldBe` [1,2,2,3,5,6]
