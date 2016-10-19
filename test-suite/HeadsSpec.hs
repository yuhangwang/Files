module HeadsSpec (spec) where

import System.Files (heads)
import Test.Hspec
import Test.Hspec.QuickCheck

spec :: Spec
spec = do
    describe "heads" $ do
        it "returns a list top few files from many files" $ do
            results <- heads 2 ["data/in/f1.txt", "data/in/f2.txt"]
            results `shouldBe` ["a", "b", "1", "2"]