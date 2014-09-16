module Main (main) where

import Test.Tasty
import Test.Tasty.HUnit as HU

main :: IO ()
main = defaultMain tests

tests :: TestTree
tests = testGroup "Test suite"
  [ testGroup "Tests" [hunitTest]
  ]

hunitTest :: TestTree
hunitTest = HU.testCase "HUnit test case" $ assertEqual "HUnit test failed" () ()
