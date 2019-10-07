def perform
	login(signup)
end
def signup
	puts "Veuillez définir un mot de passe"
	print "> "
	gets.chomp 
end
def login (pswd)
	system "clear"
	puts "Veuillez entrer le mot de passe"
	print "> "
	try = gets.chomp
	while try != pswd
		puts "Mauvais mot de passe, veuillez entrer le mot de passe"
		print "> "
		try = gets.chomp
	end
	welcome_screen

end
def welcome_screen
	system "clear"

	puts "             _..._"
	puts "           .'     '.       "
	puts "          /    .-''-\\   _/ \\ "
	puts "        .-|   /:.   |  |   |"
	puts "        |  \\  |:.   /.-'-./"
	puts "        | .-'-;:__.'    =/"
	puts "        .'=  *=|NASA _.='"
	puts "       /   _.  |    ;"
	puts "      ;-.-'|    \\   |"
	puts "     /   | \\    _\\  _\\ "
	puts "     \\__/'._;.  ==' ==\\ "
	puts "              \\    \\   |"
	puts "              /    /   /"
	puts "              /-._/-._/"
	puts "              \\   `\\  \\ "
	puts "               `-._/._"
	puts ""
	puts "    Bienvenue sur le terminal NASA"
	puts ""
	puts ""



end

perform
