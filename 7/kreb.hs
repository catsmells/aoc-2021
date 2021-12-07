import Data.List
nthElem n (x:xs) = case compare n m of
                   LT -> nthElem n ys
                   GT -> nthElem (n - m - 1) zs
                   EQ -> x
    where (ys,zs) = partition (<x) xs
          m = length ys
sr xs = sum $ map (\x -> abs (x - mid)) xs
    where mid = nthElem (length xs `div` 2) xs
rt f a b | a == x    = min y0 y1
             | y0 < y1   = rt f a x
             | otherwise = rt f x b
    where x = (a + b) `div` 2
          y0 = f x
          y1 = f (x + 1)
rn t x = n * (n + 1) `div` 2        
    where n = abs (x - t)
pf xs = rt f (minimum xs) (maximum xs)
    where f t = sum $ map (rn t) xs
main = do kp <- read . ("[" ++) . (++ "]") <$> readFile "input.dat"
          let a1 = sr kp
          let a2 = pf kp
          print (a1,a2)
