import Data.Numbers.Primes

largestPrimeFactor :: Integral a => a -> a
largestPrimeFactor = last . primeFactors

answer = largestPrimeFactor 600851475143
