require 'facebook/messenger'
include Facebook::Messenger

response = HTTParty.get('https://graph.facebook.com/2134764759913485?fields=first_name,last_name,profile_pic&access_token=EAAPSxjRGx7UBAO3MrWF96h5raDyZC90L1JWJ0R7qdsMoA17eCBTzfJZALOnNRUkdigLdoI1IRPuYEXJZAwtdLxN5mTZCoA7BjZCuy0mkgN4xsj16zASr5KhVpNKbjFqXGgmf9nBT4nr9I2naj5gjlhWN3WPHD7IBGULV71293swZDZD')
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
