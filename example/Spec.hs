{-# OPTIONS_GHC -fno-warn-missing-signatures #-}
module Spec (main, spec) where

import           Test.Hspec.ShouldBe

main = hspec spec

spec = do

  describe "reverse" $ do
    it "reverses a list" $ do
      reverse [1 :: Int, 2, 3] `shouldBe` [3, 2, 1]

    prop "gives the original list, if applied twice" $
      \(xs) -> reverse (reverse xs) == (xs :: [Int])
