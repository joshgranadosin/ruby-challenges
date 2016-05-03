class Bank_Account
	def initialize (balance)
		@balance = balance
	end

	def prompt_choice
		puts "What would you like to do? ('deposit', 'withdraw', 'check_balance')"
		choice = gets.chomp
		until choice == 'deposit' || choice == 'withdraw' || choice == 'check_balance'
			puts "Please pick a valid choice: ('deposit', 'withdraw', 'check_balance')"
			choice = gets.chomp
		end
		if choice == 'deposit'
			deposit
		elsif choice =='withdraw'
			withdraw
		else
			check_balance
		end
	end
			

	def deposit
		amount = nil
		puts "How much would you like to deposit?"
		amount = gets.chomp
		until /^([+-]?([0-9]*)|([+-]?([0-9]*)\.([0-9][0-9])))$/.match(amount)
			puts "Please enter a valid amount."
			amount = gets.chomp
		end
		@balance += amount.to_f
		check_balance
	end

	def withdraw
		amount = nil
		puts "How much would you like to withdraw?"
		amount = gets.chomp
		until /^([+-]?([0-9]*)|([+-]?([0-9]*)\.([0-9][0-9])))$/.match(amount)
			puts "Please enter a valid amount."
			amount = gets.chomp
		end
		if @balance < amount.to_f
			puts re"You don't have enough money."
			amount = nil
			check_balance
		else
			@balance -= amount.to_f
			check_balance
		end
	end

	def check_balance
		puts "Your current balance is #{@balance}"
		prompt_end
	end

	def prompt_end
		puts "Are you done? (yes/no)"
		choice = gets.chomp
		until choice == 'y' || choice == 'yes' || choice == 'n' || choice == 'no'
			"Are you done? (yes/no)"
			choice = gets.chomp
		end
		if choice == 'y' || choice == 'yes'
			return
		else
			prompt_choice
		end
	end
end

my_account = Bank_Account.new(50)

my_account.prompt_choice