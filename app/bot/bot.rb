require 'facebook/messenger'
include Facebook::Messenger

Bot.on :message do |message|
  message.reply(text: message.id)
  puts '///////////'
  puts 'Message Sender :'
  puts message.sender
  @sender_id = message.sender[:id]
  puts '///////////'
  puts '///////////'
  puts 'Message Seq :'
  puts message.seq
  puts '///////////'

	@response = HTTParty.get("https://graph.facebook.com/#{@sender_id}?fields=first_name,last_name,profile_pic&access_token=#{ENV['ACCESS_TOKEN']}")
	puts '///// RESPONSE /////'
	puts @response
  
end

