module RotateArraySpec where
import RotateArray
import Test.Hspec

main = hspec $ do
  describe "step" $ do
    it "returns a list with its tail on head" $ do
      step [1,2,3,4,5,6,7]
        `shouldBe` [7,1,2,3,4,5,6]

  describe "rotate 1 step" $ do
    it "returns a list with one step rotated" $ do
      rotate [1,2,3,4,5,6,7] 1
        `shouldBe` [7,1,2,3,4,5,6]

  describe "rotate 2 steps" $ do
    it "returns a list with two steps rotated" $ do
      rotate [1,2,3,4,5,6,7] 2
        `shouldBe` [6,7,1,2,3,4,5]

  describe "rotate 3 steps" $ do
    it "returns a list with three steps rotated" $ do
      rotate [1,2,3,4,5,6,7] 3
        `shouldBe` [5,6,7,1,2,3,4]

--

  describe "rotate'" $ do
    it "returns a list with N steps rotated" $ do
      rotate' [1,2,3,4] 3
        `shouldBe` [2,3,4,1]

--

  describe "day_of_week_in" $ do
    it "returns the day of the week that will be in k days" $ do
      day_of_week_in 100
        `shouldBe` "Wed"

  describe "day_of_week_in'" $ do
    it "returns the day on the week that will be in k days, but rotating to the right" $ do
      day_of_week_in' 100
        `shouldBe` "Wed"
