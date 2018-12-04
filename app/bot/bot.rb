require 'facebook/messenger'
include Facebook::Messenger



Bot.on :optin do |optin|
  @user_id = optin.sender
end

puts "///// USER ID /////"
puts @user_id

@response = HTTParty.get("https://graph.facebook.com/#{@user_id}?fields=first_name,last_name,profile_pic&access_token=#{ENV['ACCESS_TOKEN']}")
puts '///// RESPONSE /////'
puts response

Bot.on :message do |message|
  message.reply(text: message.id)
  puts '///////////'
  puts 'Message Sender :'
  puts message.sender
  puts '///////////'
  puts '///////////'
  puts 'Message Seq :'
  puts message.seq
  puts '///////////'


end
