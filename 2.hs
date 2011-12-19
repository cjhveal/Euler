fibs = 0 : 1 : zipWith (+) fibs (tail fibs)
fib n = fibs!!n

gather_fibs = gather_fibs' 0
  where
    gather_fibs' n = case fib n < 4000000 of
      True -> [fib n] ++ gather_fibs' (n+1)
      False -> []

answer = sum [x | x <- gather_fibs, x `mod` 2 == 0]
