-- Multiples of xs
multiples :: [Int] -> [Int] -> [Int]
multiples [] _ = []
multiples _ [] = []
multiples xs ys = filter (\x -> foldr (\y-> \z-> z || ( x `mod` y == 0)) False ys) xs

answer = sum $ multiples [1..999] [3,5]
