# 1. on traduit chaque mot separement
# 2. on traduit de maniere differente si :
# 2.1. la premiere lettre est une voyelle
# 2.2. la seconde lettre est une voyelle (la premiere est une consonne)
# 2.3. la troisieme lettre est une voyelle (les deux premieres sont des consonnes)
# 2.4. la quatrieme lettre est une voyelle (les trois premieres sont des consonnes)
# 2.5. les trois premiers caracteres sont sch
# 2.6. les deux premiers caracteres sont qu

def translate (str)
	return str.split(/ |\_|\-/).map { |word| process(word)}.join(" ")
end
def process(word)
	vowels = ["a","e","i","o","u",]
	if /[[:upper:]]/.match(word[0])	
		iscap = true
	else
		iscap = false
	end
	word = word.downcase
	if /[[:punct:]]/.match(word[-1])
		ponct = true
		tmp = word.slice(-1)
		word = word[0..-2]
	else
		pont = false
	end
	if word.size >= 2 && word.start_with?("qu")
		return case3(word).capitalize + tmp if iscap && ponct
		return case3(word).capitalize if iscap 
		return case3(word) + tmp if  ponct
		return case3(word) 
	elsif    word.size >= 1 && vowels.include?(word[0])
		return case1(word).capitalize + tmp if iscap && ponct
		return case1(word).capitalize if iscap 
		return case1(word) + tmp if  ponct
		return case1(word) 
	elsif word.size >= 2 && vowels.include?(word[1])
		return case2(word).capitalize + tmp if iscap && ponct
		return case2(word).capitalize if iscap 
		return case2(word) + tmp if  ponct
		return case2(word) 
	elsif word.size >= 3 && word[1..2]=="qu"
		return case4(word).capitalize + tmp if iscap && ponct
		return case4(word).capitalize if iscap 
		return case4(word) + tmp if  ponct
		return case4(word) 
	elsif word.size >= 3 && vowels.include?(word[2])
		return case3(word).capitalize + tmp if iscap && ponct
		return case3(word).capitalize if iscap 
		return case3(word) + tmp if  ponct
		return case3(word) 
	elsif word.size >= 4 && vowels.include?(word[3])
		return case4(word).capitalize + tmp if iscap && ponct
		return case4(word).capitalize if iscap 
		return case4(word) + tmp if  ponct
		return case4(word) 
	elsif word.size >= 3 && word.start_with?("sch")
		return case4(word).capitalize + tmp if iscap && ponct
		return case4(word).capitalize if iscap 
		return case4(word) + tmp if  ponct
		return case4(word) 
	end			
end
def case1(word)
	return word + "ay"
end
def case2(word)
	return (word + word.slice(0)+"ay")[1..-1]
end
def case3(word)
	return (word + word.slice(0..1)+"ay")[2..-1]
end
def case4(word)
	return (word + word.slice(0..2)+"ay")[3..-1]
end