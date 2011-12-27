module Test.Hspec.ShouldBe (
  shouldBe
, module Test.Hspec.Monadic
, prop
, property
)
where

import           Test.Hspec.Monadic
import           Test.Hspec.QuickCheck
import           Test.Hspec.HUnit ()
import           Test.HUnit
import           Control.Monad

shouldBe :: (Show a, Eq a) => a -> a -> Assertion
actual `shouldBe` expected = actual @?= expected
