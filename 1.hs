-- multiples: takes two lists, and returns the elements of the first list
-- which are divisble by an element in the second list.
multiples :: [Int] -> [Int] -> [Int]
multiples [] _ = []
multiples _ [] = []
multiples xs ys = filter (\x -> any (\y-> ( x `mod` y == 0)) ys) xs

answer = sum $ multiples [1..999] [3,5]
