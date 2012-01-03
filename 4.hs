-- Largest palindromic produdt of two n digit numbers
maxPal :: Int -> Int
maxPal 0 = 0
maxPal n = maximum [x*y | x <- domain, y <- domain, show(x*y) == reverse(show(x*y))]
  where domain = [(10^(n-1))..((10^n)-1)]

answer = maxPal 3
