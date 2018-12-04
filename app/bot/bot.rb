require 'facebook/messenger'
include Facebook::Messenger

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


Bot.on :message do |message|
  message.reply(text: 'yoyoyoyo')
end
