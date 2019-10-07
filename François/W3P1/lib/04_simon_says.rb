def echo (str)
	return str
end
def shout (str)
	return str.upcase
end
def repeat (str, n=2)
	return str + (" " + str) * (n-1)
end
def start_of_word (str,n)
	return str[0..n-1]
end
def first_word (str)
	return str.split.first
end
def titleize (str)
	littleWords = ["and", "the", "or"]
	return str.split(/ |\_|\-/).each_with_index.map { |word,index|  (littleWords.include?(word)&&index!=0) ? word : word.capitalize }.join(" ")
end