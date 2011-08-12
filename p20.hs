import Data.Char

numberToList n = map digitToInt (show n)

main = sum(numberToList (product [1..100]))
