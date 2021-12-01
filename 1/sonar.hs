import Data.List
main :: IO ()
main = 
  do numStrs <- readFile "xx/input.dat"
      let nums = map (read @Int) $ lines numStrs
      print $ p1 nums
      print $ p2 nums
p1 :: [Int] -> Int
p1 = countIncreasing
p2 :: [Int] -> Int
p2 nums = countIncreasing $ map sum windows
  where windows = filter (\w -> length w == 3) $ map (take 3) $ tails nums
countIncreasing :: [Int] -> Int
countIncreasing nums = length $ filter (> 0) $ zipWith (-) (tail nums) nums
