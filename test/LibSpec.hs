module LibSpec where

import Test.Tasty ( TestTree )
import Test.Tasty.HUnit ( testCase, (@?=) )

test_reversed :: TestTree
test_reversed =
  testCase "1 is equal to 1" $
    1 @?= 1
