import Char

sumd :: (Integral a) => a -> a
sumd = sum . map (fromIntegral.digitToInt) . show

answer = sumd $ 2^1000
