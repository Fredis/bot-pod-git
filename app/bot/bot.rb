require 'facebook/messenger'
include Facebook::Messenger

Bot.on :message do |message|
  message.reply(text: message.id)
  puts '///////////'
  puts 'Message Sender :' + message.sender
  puts '///////////'
  puts '///////////'
  puts 'Message Seq :' + message.seq
  puts '///////////'

	message.reply(
	 attachment: {
	   type: 'template',
	   payload: {
	     template_type: 'button',
	     text: 'Human, do you like me?',
	     buttons: [
	       { type: 'postback', title: 'Yes', payload: 'HARMLESS' },
	       { type: 'postback', title: 'No', payload: 'EXTERMINATE' }
	     ]
	   }
	 }
	)


end


