require 'httparty'
@input = gets.chomp.downcase

url = "https://www.cleverbot.com/getreply?key=CC3s41j3wDb2ygtXGp6Dir5pxew&input=#{@input}"

response = HTTParty.get(url)

#Issue is: No matter what I/we tried, can't specify only output is wanted
puts response[output]
