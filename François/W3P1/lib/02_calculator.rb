def add (a,b)
	return a+b
end
def subtract (a,b)
	return a-b
end
def sum (sum)
	return sum.inject(0, :+)
end
def multiply (a,b)
	return a*b
end
def power (a,b)
	return a**b
end
def factorial (a)
	return 1 if a<=0
	return a * factorial(a-1) 
end