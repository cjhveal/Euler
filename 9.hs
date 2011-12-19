answer = [a*b*c | c <- [1..998], b <- [1..c-1], a <- [1..b-1], a*a + b*b == c*c, a+b+c==1000]
