require 'io/console'

#intro + requires 'card input' + obscures card
sleep 1
puts "Please insert your bank card (Type: CARD)."
input = STDIN.noecho(&:gets).chomp.downcase
  unless input == 'card'
    sleep 1.5
    puts "Unable to read card. Termination in 3 seconds."
    sleep 3
    exit
  end

#Filler material
  sleep 1
puts "Card validation. Please wait."
  sleep 3
puts "Card Validated."
  sleep 1.5

#Enter obscured password
puts "Please enter your password:"
  STDIN.noecho(&:gets).chomp
  sleep 1
puts "Signing in..."
  sleep 3
atm = true
exit if atm == false

until atm == false
  puts ""
  puts "Here are your options:"
    sleep 1
  puts "1: WITHDRAW"
    sleep 1
  puts "2: DEPOSIT"
    sleep 1
  puts "3: BALANCE"
    sleep 1
  puts "4: EXIT"

selection = gets.chomp.downcase
  case
    when selection == "1"
        sleep 1
      puts "You selected withdraw. Please enter your amount:"
        withdrawal = gets.to_i
        sleep 1
      puts "HERE; HAVE #{withdrawal} YEN."

    when selection == "2"
        sleep 1
      puts "You selected deposit. Please enter your amount:"
        deposit = gets.to_i
        sleep 1
      puts "You have donated #{deposit} AUD."
        sleep 1
      puts "Thank you for your consideration."

    when selection == "3"
      sleep 1
      puts "YOU SELECTED BALANCE. BEHOLD YOUR FINANCIAL POWER!"

    when selection == "4"
        sleep 1
        puts "Signing out..."
        sleep 3
      exit
  end

#Brief pause before ask; continue
sleep 1.5

puts "Would you like to exit? (Y/N)"
  u_i = gets.chomp.downcase

  case
  when u_i == 'n'
    sleep 1
      atm == true
    puts "Returning to options menu..."
      sleep 1.5
  when u_i == 'y'
    sleep 1
      atm = false
    puts "Business appreciated. Signing out..."
      sleep 3
  end

end
