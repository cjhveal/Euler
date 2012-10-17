divides :: Int -> Int -> Bool
divides x y = (==0) $ mod y x

answer :: Int
answer = sum [x | x <- [1..999], 3 `divides` x || 5 `divides` x]
