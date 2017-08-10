require 'cowsay'
require 'httparty'

class Initiate
  puts "Type: 'Out' to exit placeholder_name."
  sleep 3
  puts "Please hit enter if you understand."
  gets.chomp
  puts "Start your conversation:"
end

class Bot_loop
  loop do
      @input = gets.chomp.downcase
      if @input == "out"
        exit
      else
      url = "https://www.cleverbot.com/getreply?key=CC3s41j3wDb2ygtXGp6Dir5pxew&input=#{@input}"
      @response = HTTParty.get(url)
      system("cowsay '#{@response["output"]}'")
    end
  end
end

Initiate.new
Bot_loop.new
