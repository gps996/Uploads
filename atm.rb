#intro
puts "ORO! INSERT YOUR CREDIT CARD. TYPE 'CARD.'"
input = gets.chomp.downcase
exit unless input == 'card'

#options listed after announcements
#if input == 'card'

section = true
exit if section == false

until section == false
  sleep 1
    puts "1: WITHDRAW"
  sleep 1
    puts "2: DEPOSIT"
  sleep 1
    puts "3: BALANCE"
  sleep 1
    puts "4: EXIT"


#Allow user to select option
selection = gets.chomp.downcase

  case
    when selection == "1"
      puts "YOU SELECTED WITHDRAW. HOW MUCH YOU WANT?"
      withdrawal = gets.chomp.downcase
        puts "FINE; HERE'S #{withdrawal} AUD."
    when selection == "2"
      puts "YOU SELECTED DEPOSIT. HOW MUCH DEPOSIT?"
      deposit = gets.chomp.downcase
        puts "You have donated #{deposit} AUD."
        sleep 1
        puts "Thank you for your consideration."
    when selection == "3"
      puts "YOU SELECTED BALANCE. BEHOLD YOUR FINANCIAL POWER!"
    when selection == "4"
      puts "Termination in 3 seconds"
      puts "3"
      sleep 1
      puts "2"
      sleep 1
      puts "1"
      sleep 1
      exit
    end

sleep 1.5

puts "YOU WANNA DO MORE STUFF? (Y/N)"
  u_i = gets.chomp.downcase

  case
    when u_i == 'y'
    section == true
    when u_i == 'n'
    section = false
    puts "Termination in 3 seconds."
    sleep 3
  end

end
