-- Calculates the diference between the the square of the sum of the list
-- and the sum of the squares of the list.
diffSquares :: [Int] -> Int
diffSquares [] = 0
diffSquares xs = squareOfSums - sumOfSquares
  where
    squareOfSums = (sum xs)^2
    sumOfSquares = sum $ map (flip (^) 2) xs

answer = diffSquares [1..100]
