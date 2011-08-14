import util

bin10Pal n = isPalindrome n && toBin n == reverse(toBin n)

main = print sum(filter bin10Pal [1..1000000])
