import Data.List
main :: IO ()
main = 
  do numStrs <- readFile "xx/input.dat"
      let nums = map (read @Int) $ lines numStrs
      print $ part1 nums
      print $ part2 nums
part1 :: [Int] -> Int
part1 = countIncreasing
part2 :: [Int] -> Int
part2 nums = countIncreasing $ map sum windows
  where windows = filter (\w -> length w == 3) $ map (take 3) $ tails nums
countIncreasing :: [Int] -> Int
countIncreasing nums = length $ filter (> 0) $ zipWith (-) (tail nums) nums
