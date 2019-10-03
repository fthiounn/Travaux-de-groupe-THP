def perform
	system "clear"
	user_input = menu
	case user_input
	when 1
		half_pyramid
		perform
		return
	when 2
		full_pyramid
		perform
		return
	when 3
		wtf_pyramid
		perform
		return
	when 4
		puts "Thanks for using Pyramids"
	else 
		"Error with user user input"
	end
end

def menu
	user_input = 0
	
	while user_input < 1 || user_input > 4
		puts "                                            d8b     888         "
		puts "                                            Y8P     888         "
		puts "                                                    888         "
		puts "88888b. 888  888 88d888 8888b. 88888b.d88b. 888 .d88888 d8888b  "
		puts "888  88 888  888 88P        88 888  888  88 888 88  888 8K      "
		puts "888  88 888  888 88    .d88888 888  888  88 888 88  888 Y8888b. "
		puts "888 d88 Y88b 888 88    888  88 888  888  88 888 88b 888     X88 "
		puts "88888P    Y88888 88     Y88888 888  888  88 888  Y88888 88888P' "
		puts "888          888                                                "
		puts "888     Y8b d88P                                                "
		puts "888" 
		puts ""
		puts "Pyramids Menu, enter choice"
		puts "1. Pyramide de Mario"
		puts "2. Full Pyramide"
		puts "3. Losange"
		puts "4. exit"
		print "> "
		user_input = gets.to_i
	end
	user_input
end

def half_pyramid
	system "clear"
	user_input = 0

	while user_input>25 || user_input<1
		puts "Half Pyramid : Enter a number between 1 and 25"
		print "> "
		user_input = gets.to_i
	end
	output = "";
	puts "Voici la pyramide :"

	for a in 1..user_input do
		output = output + " "
	end

	for a in 1..user_input do
		output[user_input-a] = "#"
		puts output
	end
	print "Press any key to continue .. "
	gets
end

def full_pyramid
	system "clear"
	user_input = 0

	while user_input>25 || user_input<1
		puts "Full Pyramid : Enter a number between 1 and 25"
		print "> "
		user_input = gets.to_i
	end
	output = "";
	puts "Voici la pyramide :"

	for a in 0..user_input do
		output = output + " "
	end
	output+= "#"
	while user_input > 0
		puts output
		output[user_input] = "#"
		output+="#"
		user_input -= 1
	end
	print "Press any key to continue .. "
	gets
end

def wtf_pyramid
	system "clear"
	user_input = -1
	puts "Full Pyramid : Enter an odd number between 1 and 25"
	print "> "
	user_input = gets.to_i
	while user_input>25 || user_input<1 || user_input.even?
		puts " Please enter an odd number between 1 and 25"
		print "> "
		user_input = gets.to_i
	end
	user_input = user_input /2 
	reverse = user_input
	output = "";
	puts "Voici la pyramide :"

	for a in 0..user_input do
		output = output + " "
	end
	output+= "#"
	while user_input > 0
		puts output
		output[user_input] = "#"
		output+="#"
		user_input -= 1
	end
	puts output
	user_input+=1
	while user_input < reverse
		output[user_input] = " "
		output[output.size-user_input] = " "
		puts output
		user_input+=1
	end
	output[user_input] = " "
	output[output.size-user_input] = " "
	puts output
	print "Press any key to continue .. "
	gets
end

perform