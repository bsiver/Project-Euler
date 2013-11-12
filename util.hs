import Data.Char
import Numeric
import Data.List

isPrime x = not $ any divisible $ takeWhile notTooBig [2..] where
     divisible y = x `mod`y == 0
     notTooBig y = y*y <= x

isFactor x y = if x `mod` y == 0 then True else False

divisors n = 1 : filter ( (==0) . rem n) [2..n `div` 2]

fib 0 = 0
fib 1 = 1
fib n | even n         = f1 * (f1 + 2 * f2)
      | n `mod` 4 == 1 = (2 * f1 + f2) * (2 * f1 - f2) + 2
      | otherwise      = (2 * f1 + f2) * (2 * f1 - f2) - 2
   where k = n `div` 2
         f1 = fib k
         f2 = fib (k-1)

twentyone n = sum(divisors(n))

isAmicable n =  n == twentyone(twentyone(n)) && n /= twentyone(n)

isPalindrome n = numberToList n == reverse(numberToList n)

numberToList n = map digitToInt (show n)

toBin n = showIntAtBase 2 intToDigit n ""

slice :: [a] -> [[a]]
slice = filter (not . null) . concatMap tails . inits

triangularNumbers n = scanl (+) 1 [2..n]

abundantNumbers n = [n | n<-[1..n], sum(divisors n) > n]
