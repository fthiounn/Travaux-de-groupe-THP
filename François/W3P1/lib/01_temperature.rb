#converts Fahrenheit to Celcius
def ftoc(fahrenheit)
	return (fahrenheit-32)*5/9
end
#converts Celcius to Fahrenheit
def ctof(celcius)
	return ((celcius.to_f*9)/5)+32
end