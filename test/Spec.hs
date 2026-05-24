import Test.HUnit
import Lib -- Import your library code where 'mystery' is defined

-- Define a test case
testMysteryPositive = TestCase $ assertEqual
    "Positive input adds ' is positive'"
    "Hello is positive"
    (mystery 5 "Hello")

testMysteryNegative = TestCase $ assertEqual
    "Negative input adds ' is non-positive'"
    "World is non-positive"
    (mystery (-3) "World")


-- Collect all tests
tests = TestList [TestLabel "Positive" testMysteryPositive,
                  TestLabel "Negative" testMysteryNegative]

-- Run the tests
main = runTestTT tests >> return ()

