def func(i):
	for j in range(1, 11):
		if i%j==0 and j == 20:
			return "Divisible"
		elif i%j==0:
			continue
		else:
			return "Not divisble"

for i in range(1,10000):
	if func(i) == "Divisible":
		print i
