def perform
	say_hello(ask_first_name)
end

def say_hello (first_name)
	puts "Bonjour, #{first_name} !"
end

def ask_first_name
	puts "Veuillez entrer votre prénom : "
	print "> "
	gets.chomp
end

perform