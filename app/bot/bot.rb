require 'facebook/messenger'
include Facebook::Messenger

Bot.on :message do |message|
  @sender_id = message.sender["id"]
	@response = HTTParty.get("https://graph.facebook.com/#{@sender_id}?fields=first_name,last_name,profile_pic&access_token=#{ENV['ACCESS_TOKEN']}")
	puts '///// RESPONSE /////'
	puts @response

  message.reply(text: "Salut #{@response['first_name']}")
  puts '///////////'
  puts 'Message Sender :'
  puts message.sender
  puts '///////////'
  puts '///////////'
  puts 'Message Seq :'
  puts message.seq
  puts '///////////'
  
end

