-- Question 2: Sum all even fibonacci numbers < 4000000

-- fibs: an infinite list of fibonacci numbers
fibs :: [Int]
fibs = 0 : 1 : zipWith (+) fibs (tail fibs)

-- fib: Takes an integer and returns the nth fibonacci number
fib :: Int -> Int
fib n = fibs!!n

-- gather_fibs: Gathers all of the fibonacci numbers < 4000000
-- TODO: This is very ugly... 
gather_fibs :: [Int]
gather_fibs = gather_fibs' 0
  where
    gather_fibs' n = case fib n < 4000000 of
      True -> [fib n] ++ gather_fibs' (n+1)
      False -> []

answer :: Int
answer = sum [x | x <- gather_fibs, x `mod` 2 == 0]
