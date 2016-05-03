puts "What would you like to do? ('add','subtract','multiply','divide')"
choice = gets.chomp
until choice == 'add' || choice == 'subtract' || choice == 'multiply' || choice == 'divide'
	puts "Please make a valid choice"
	choice = gets.chomp
end

puts "What's the first number?"
num1 = gets.chomp
until /^([+-]?([0-9]*)|([+-]?([0-9]*)\.([0-9]*)))$/.match(num1)
	puts "Gimme a valid number please"
	num1 = gets.chomp
end
num1 = num1.to_f

puts "What's the second number?"
num2 = gets.chomp
until /^([+-]?([0-9]*)|([+-]?([0-9]*)\.([0-9]*)))$/.match(num2)
	puts "Gimme a valid number please"
	num2 = gets.chomp
end
num2 = num2.to_f

puts "Result:"

if choice == 'add'
	puts num1 + num2
elsif choice == 'subtract'
	puts num1 - num2
elsif choice == 'multiply'
	puts num1 * num2
elsif choice == 'divide'
	puts num1 / num2
end