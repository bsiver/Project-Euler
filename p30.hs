import Data.Char

thirtythree n = (sum(map (^5)(map digitToInt (show n)))) == n

main =  sum(filter (thirtythree) [2..100000])
