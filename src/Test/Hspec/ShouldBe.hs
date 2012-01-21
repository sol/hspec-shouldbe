{-# LANGUAGE NoImplicitPrelude #-}
module Test.Hspec.ShouldBe (
  module Test.HUnit.ShouldBe
, module Test.Hspec.Monadic
, prop
, property
)
where

import           Test.Hspec.Monadic
import           Test.Hspec.QuickCheck
import           Test.Hspec.HUnit ()
import           Test.HUnit.ShouldBe
