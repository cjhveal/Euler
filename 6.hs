sum_of_squares = sum [x*x | x <- [1..100]]
square_of_sum = (sum [1..100]) * (sum [1..100])

answer = square_of_sum - sum_of_squares
