-- Question 2: Sum all even fibonacci numbers < 4000000

-- fibs: an infinite list of fibonacci numbers
fibs :: [Int]
fibs = 0 : 1 : zipWith (+) fibs (tail fibs)

-- gather_fibs: Gathers all of the fibonacci numbers < 4000000
gatherFibs :: [Int]
gatherFibs = takeWhile (<4000000) fibs

answer :: Int
answer = sum [x | x <- gatherFibs, x `mod` 2 == 0]
