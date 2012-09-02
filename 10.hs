import Data.Numbers.Primes

answer = sum $ takeWhile (< 2000000) primes
