#2.4. Programme 3 : 6ème sans ascenseur
#Ton programme sera contenu dans un fichier lib/03_stairway.rb.

#2.4.1. Jeu vidéo
#Tu vas maintenant coder un super jeu qui déchire. Mario n'a qu'à bien se tenir avec sa pyramide ! 
#Nous allons imaginer un programme dans lequel une gentille personne va devoir monter 10 marches en fonction 
#d'un jet de dé. Une version informatique du jeu de l'oie en quelque sorte !

#Voici comment cela va se dérouler : à l'exécution, le programme lance une partie. Le joueur est tout en bas 
#d'un escalier à 10 marches, et à chaque tour il va lancer un dé :

#S’il fait 5 ou 6, il avance d'une marche et le programme le lui dit (ainsi que la marche où il est à présent)
#S’il fait 1, il descend d'une marche et le programme le lui dit (ainsi que la marche où il est à présent)
#S’il fait 2, 3, ou 4 rien ne se passe, et le programme le lui dit (ainsi que la marche où il est resté)
#Quand le joueur atteint la 10ème marche, le programme l'en informe avec un message super enthousiaste, et le 
#eu se termine.

#2.4.2. Statistiques
#L'une des grandes forces de l'informatique est de pouvoir faire un nombre conséquent d'itérations et de 
#pouvoir sortir des moyennes et médianes très facilement.

#Fais donc une méthode average_finish_time qui va simuler au moins 100 parties, et te retourner le nombre 
#de tours moyen pour arriver à la 10ème marche.

#main du prog
def perform
	case menu
	when 1
		play
		perform
		return
	when 2
		stats
		perform
		return
	when 3
		rules
		perform
		return
	when 4
		puts "Thanks for playing !!"
		return
	else
		puts "ERREUR - menu function output bug"
	end
end

#permet au user de choisir si il veux les statistiques ou bien jouer
def menu
	user_input = 0
	while user_input < 1 || user_input > 4
		system "clear"
		puts "           -     -                 .      :"
		puts "           -     -     -                  |          -"
		puts "     -           -     -    .      .      |    -     -     -"
		puts "     -     -     -    |      .      |    -     -     -"
		puts "     -     -     -     -    |      :      |    -     -     -"
		puts "     -     -     -     -   .|     _|_     |.         -     -"
		puts "     -     -     -       ._-|             |-_.       -     -"
		puts "     -     -     -     ._-  |             |  -_.     -     -"
		puts "  -.--.--.--.--.--. _ _-_ _ |   M E N U   | _ _-_ _ .--.--.--.--.--.-"
		puts "   |  |  |  |  |  |`.| | | ||   _______   || | | |.'|  |  |  |  |  |"
		puts "  8888888888888888L_|`.88888|  |   |   |  |88888.'|_J8888888888888888"
		puts "         |:     `888L_|`.|  |  |   |   |  | :|.'|_J888'    :|"
		puts "         |:       `888L_|`. |  |   |   |: | .'|_J888'      :|"
		puts "         |:        |`888L_|`.  |   |   |  .'|_J888'        :|"
		puts "   ______<:________|:_`888L_|) |   |   | (|_J888':|________:|________"
		puts "         |:        |:   `888L. |___|___| .J888'  :|        :|"
		puts "         |:        |:     `88|/_________\\|88'    :|        :|"
		puts "   __..--       _.-'        ,|L_________J|.      `-._      ``--..__"
		puts "  '         _.-'            |/___________\\|          `-._          ``"
		puts "                          .c|L___________J|c.            `-."
		puts "                        .' |/_____________\\| `."
		puts "      1. PLAY         .'|  |L_____________J|  |`.          2. STATS"
		puts "      3. RULES     .'  | _/               \\_ |  `.         4. QUIT" 
		puts "                  .'|   _//                 \\\\_   |`."
		puts "                .'  | _///                   \\\\\\_ |  `."
		puts "               _____  Welcome to the Stairway Game !!  ___"   
		puts "Select Menu choice > "
		user_input = gets.to_i
	end
	user_input
end

#lance une partie
def play
	game_state = 0
	count = 0
	user_input = 0
	system "clear"
	#boucle de Jeu
	#1. afficher l'etat en cours
	#2. proposer de jetter le dé 
	#3. calcul du prochain game state et on boucle
	while game_state != 10
		print_game_state(game_state, count)
		user_input = 0
		puts "Press Enter to roll a dice .. "
		gets
		system "clear"
		game_state = roll_dice(game_state)
		count+=1
	end

	print_win(count)
end
#on affiche le contenu correspondant au game state
def print_game_state (game_state, count)
	case game_state
		when 0
			puts " "
			puts "                                           "
			puts "                                  _______10"
			puts "                               ___|9"
			puts "                            ___|8"
			puts "                         ___|7"
			puts "                      ___|6"
			puts "                   ___|5"
			puts "                ___|4"
			puts "             ___|3"
			puts "  o       ___|2"
			puts " /|\\  ___|1          You rolled the dice #{count} times"            
			puts " /_\\__|0             You are at Step : 0"
		when 1
			puts ""
			puts "                                           "
			puts "                                 _______10"
			puts "                             ___|9"
			puts "                          ___|8"
			puts "                       ___|7"
			puts "                    ___|6"
			puts "                 ___|5"
			puts "              ___|4"
			puts "    o      ___|3"
			puts "   /|\\  ___|2"
			puts "   /_\\__|1          You rolled the dice #{count} times"            
			puts " ___|0             You are at Step : 1"
		when 2
			puts ""
			puts "                                          "
			puts "                                 _______10"
			puts "                              ___|9"
			puts "                           ___|8"
			puts "                        ___|7"
			puts "                     ___|6"
			puts "                  ___|5"
			puts "       o       ___|4"
			puts "      /|\\  ___|3"
			puts "      /_\\__|2"
			puts "    ___|1          You rolled the dice #{count} times"            
			puts " ___|0             You are at Step : 2"
		when 3
			puts ""
			puts "                                          "
			puts "                                 _______10"
			puts "                              ___|9"
			puts "                           ___|8"
			puts "                        ___|7"
			puts "                     ___|6"
			puts "          o       ___|5"
			puts "         /|\\  ___|4"
			puts "         /_\\__|3"
			puts "       ___|2"
			puts "    ___|1          You rolled the dice #{count} times    "            
			puts " ___|0             You are at Step : 3"
		when 4
			puts ""
			puts "                                          "
			puts "                                  _______10"
			puts "                               ___|9"
			puts "                            ___|8"
			puts "                         ___|7"
			puts "              o       ___|6"
			puts "             /|\\  ___|5"
			puts "             /_\\__|4"
			puts "          ___|3"
			puts "       ___|2"
			puts "    ___|1          You rolled the dice #{count} times    "            
			puts " ___|0             You are at Step : 4"
		when 5
			puts ""
			puts "                                          "
			puts "                                  _______10"
			puts "                               ___|9"
			puts "                            ___|8"
			puts "                 o       ___|7"
			puts "                /|\\  ___|6"
			puts "                /_\\__|5"
			puts "             ___|4"
			puts "          ___|3"
			puts "       ___|2"
			puts "    ___|1          You rolled the dice #{count} times"            
			puts " ___|0             You are at Step : 5"
		when 6
			puts ""
			puts "                                          "
			puts "                                 _______10"
			puts "                              ___|9"
			puts "                   o       ___|8"
			puts "                  /|\\  ___|7"
			puts "                  /_\\__|6"
			puts "                ___|5"
			puts "             ___|4"
			puts "          ___|3"
			puts "       ___|2"
			puts "    ___|1          You rolled the dice #{count} times    "            
			puts " ___|0             You are at Step : 6"
		when 7
			puts ""
			puts "                                          "
			puts "                                 _______10"
			puts "                      o       ___|9"
			puts "                     /|\\  ___|8"
			puts "                     /_\\__|7"
			puts "                   ___|6"
			puts "                ___|5"
			puts "             ___|4"
			puts "          ___|3"
			puts "       ___|2"
			puts "    ___|1          You rolled the dice #{count} times    "            
			puts " ___|0             You are at Step : 7"
		when 8
			puts ""
			puts "                                          "
			puts "                         o        _______10"
			puts "                        /|\\   ___|9"
			puts "                        /_\\ __|8"
			puts "                      ___|7"
			puts "                   ___|6"
			puts "                ___|5"
			puts "             ___|4"
			puts "          ___|3"
			puts "       ___|2"
			puts "    ___|1          You rolled the dice #{count} times    "            
			puts " ___|0             You are at Step : 8"
		when 9
			puts ""
			puts "                           o                 "
			puts "                          /|\\   _______10"
			puts "                          /_\\ __|9"
			puts "                         ___|8"
			puts "                      ___|7"
			puts "                   ___|6"
			puts "                ___|5"
			puts "             ___|4"
			puts "          ___|3"
			puts "       ___|2"
			puts "    ___|1          You rolled the dice #{count} times    "            
			puts " ___|0             You are at Step : 9"
		when 10
			puts "                               o"
			puts "                              /|\\                "
			puts "                              /_\\______10"
			puts "                            ___|9"
			puts "                         ___|8"
			puts "                      ___|7"
			puts "                   ___|6"
			puts "                ___|5"
			puts "             ___|4"
			puts "          ___|3"
			puts "       ___|2"
			puts "    ___|1          You rolled the dice #{count} times    "            
			puts " ___|0             You are at Step : 10"
		else
			puts "ERROR with the game_state"
		end
end
#jette un dé
def roll_dice (game_state)
	roll = rand(6)
	if roll > 3 # le jet de des est 5 ou 6
		if roll == 4
			puts "You rolled 5 :) Going up one step"
		else
			puts "You rolled 6 !! Going up one step"
		end
		return (game_state + 1)
	elsif roll > 0 # le jet de des est 2, 3, 4
		if roll == 1
			puts "You rolled 2 - Nothing Happens"
		elsif roll == 2
			puts "You rolled 3 - Nothing Happens"
		else
			puts "You rolled 4 - Nothing Happens"
		end			
		return game_state
	else #le jet de des est 1
		puts "You rolled 1 :( going back one step"
		if(game_state == 0)
			return game_state
		else
			return (game_state - 1)
		end
	end
end
#Ecran de Victoire
def print_win(count)
	system "clear"
	puts "     "
	puts "    (  :"
	puts "   __\\  \\  _____"
	puts " (____)  `|"
	puts "(____)|   |"
	puts " (____).__|"
	puts "  (___)__.|_____"
	puts ""
	puts " YOU WON in #{count} rolls !! CONGRATULATION"
	puts ""
	sleep(3)
	puts "Press any key to continue  .. "
	gets
end
# statistiques
def stats
	system "clear"
	puts "On how many games do you want the stats to be based on ?"
	nb_stats = 0
	while nb_stats < 1
		print "> "
		nb_stats = gets.to_i
	end

	count = 0
	nb_stats.times {
		count += average_finish_time
	}
	puts "The average dice rolls for winning a game is : #{count/nb_stats}"
	puts "Sample of #{nb_stats} games"
	sleep(1)
	puts "Press any key to continue"
	gets
end
#average_finish_time renvoie le nombre de tous moyen pour la 10eme marche
def average_finish_time
	count = 0
	#simuler une game
	game_state = 0
	while game_state != 10
		roll = rand(6)
		if roll > 3 #5-6
			game_state +=1
		elsif roll == 0
			if game_state != 0 
				game_state -= 1
			end
		end
		count +=1
	end

	return count
end

#regles du jeu
def rules

	system "clear"
	puts "  RULES"
	puts "2.4. Programme 3 : 6ème sans ascenseur"
	puts "Ton programme sera contenu dans un fichier lib/03_stairway.rb."
	puts "2.4.1. Jeu vidéo"
	puts "Tu vas maintenant coder un super jeu qui déchire. Mario n'a qu'à bien se tenir avec sa pyramide ! Nous allons imaginer un programme dans lequel une gentille personne va devoir monter 10 marches en fonction d'un jet de dé. Une version informatique du jeu de l'oie en quelque sorte !"
	puts "Voici comment cela va se dérouler : à l'exécution, le programme lance une partie. Le joueur est tout en bas d'un escalier à 10 marches, et à chaque tour il va lancer un dé :"
	puts "S’il fait 5 ou 6, il avance d'une marche et le programme le lui dit (ainsi que la marche où il est à présent)"
	puts "S’il fait 1, il descend d'une marche et le programme le lui dit (ainsi que la marche où il est à présent)"
	puts "S’il fait 2, 3, ou 4 rien ne se passe, et le programme le lui dit (ainsi que la marche où il est resté)"
	puts "Quand le joueur atteint la 10ème marche, le programme l'en informe avec un message super enthousiaste, et le jeu se termine."
	puts "2.4.2. Statistiques"
	puts "L'une des grandes forces de l'informatique est de pouvoir faire un nombre conséquent d'itérations et de pouvoir sortir des moyennes et médianes très facilement."
	puts "Fais donc une méthode average_finish_time qui va simuler au moins 100 parties, et te retourner le nombre de tours moyen pour arriver à la 10ème marche."
	print "PESS ANY KEY TO CONTINUE  >  "
	gets
end

perform