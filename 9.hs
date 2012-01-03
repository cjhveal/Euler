-- Products of the pythagorean triplets (a,b,c) s.t. a+b+c = n, 
-- if one exists or [] otherwise.
prodPythTrip :: Int -> [Int]
prodPythTrip n = [a*b*c | c <- [1..n-2], b <- [1..c-1], a <- [1..b-1], a*a + b*b == c*c, a+b+c==n]
