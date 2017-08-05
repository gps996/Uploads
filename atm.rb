#intro
puts "ORO! INSERT YOUR CREDIT CARD. TYPE 'CARD.'"
input = gets.chomp.downcase
exit unless input == 'card'

#options listed after announcements
if input == 'card'
  sleep 1
    puts "YOU NOW HAFF 3 CHOICES:"
  sleep 1
    puts "1. WITHDRAW"
  sleep 1
    puts "2. DEPOSIT"
  sleep 1
    puts "3. BALANCE"
  sleep 1
    puts "4. EXIT"
    if input == "4"
      puts "Will exit in 3 seconds"
      puts "3"
      sleep 1
      puts "2"
      sleep 1
      puts "1"
      sleep 1
      exit
  end
end

#Allow user to select option
input = gets.chomp.downcase
  case
    when input == "1"
      puts "YOU SELECTED WITHDRAW. HOW MUCH YOU WANT?"
    when input == "2"
      puts "YOU SELECTED DEPOSIT. HOW MUCH DEPOSIT?"
    when input == "3"
      puts "YOU SELECTED BALANCE. BEHOLD YOUR FINANCIAL POWER!"
    end
sleep 2

puts "YOU WANNA DO MORE STUFF? (Y/N)"
  input = gets.chomp.downcase

until input == ["y" , "n"]
  puts "Invalid response. Please retry."
end

  case
  when input == "y"
    puts "Access denied. Type 'N.'"
  when input == "n"
    puts "Termination in 3 seconds."
    print "3"
    sleep 1
    print "2"
    sleep 1
    print "1"
    sleep 1
    exit
end


-Thomas
