--Copyright (C) Chronomly6 - All Rights Reserved
--Unauthorized copying of this file, via any medium is strictly prohibited
--Proprietary and confidential
--Thanks for Using SmoreBot

local discordia = require('discordia')
local client = discordia.Client()

client:on('ready', function()
    print('Booting SmoreOS 2.0')
	print('Connecting to Discord Servers')
end)
	
client:on('ready', function()
    print('Logged in as User: '.. client.user.username)
end)

--Commands
client:on('messageCreate', function(message)
	-- exit early if the author is the same as the client
	if message.author == client.user then return end

	-- split the message content into a command and everything else
	local cmd, arg = message.content:match('(%S+)%s+(.*)')
	cmd = cmd or message.content
	
	if message.content == '<ping' then
        message.channel:sendMessage(':ping_pong: pong')
		print("<ping command was used")
	end

    if message.content == '<smore' then
        message.channel:sendMessage('https://static1.squarespace.com/static/553b26fde4b08ceb08a4242c/553b2823e4b0eb3719c6d635/553b2835e4b0eb3719c7cbb3/1277100054042/1000w/smorepoptart.jpg')
		print("<smore command was used")
    end
	
	if message.content == '<memez' then
        message.channel:sendMessage('http://wow.zamimg.com/uploads/screenshots/small/233498.jpg')
		print("<memez command was used")
    end
	
	if message.content == '<quote' then
        message.channel:sendMessage('Someone could unlock my phone with my fingerprint while I was asleep and I would never know')
		print("<quote command was used")
	end
		
	if message.content == '<censor' then
		message.channel:sendMessage(string.format('Now Starting: Censorship SubRoutine, Started By ``User: %s``', message.author.username))
		print("<censor command was used")
	end
	
	if message.content == '<fail' then
		message.author:sendMessage(string.format('Get a Life %s', message.author.username))
		print("<fail was used")
	end
	
	if message.content == '<log' then
		message.channel:sendMessage('`Error 0.1= "message not found"`')
	end

	if message.content == '<uptime' then
		message.channel:sendMessage('?!uptime <@290228059599142913>')
	end


--Help command
	if message.content == '<help' then
		message.channel:sendMessage('Help Sent! :mailbox_with_mail:') 
	end
	
	if message.content == '<help' then
	message.author:sendMessage([[
**Command List**
```
<memez - shows you the memes
<ping - pings the bot
<smore - shows you some poptarts
<quote - a quote from https://www.reddit.com/r/Showerthoughts/
<help - this message
<censor - starts the censorship subroutine - DOES NOTHING
<join - some important links , also if you say SmoreBot you can talk to the bot
<fail - insults you in DMs
<log - should print the bot's logs
```
]])
	print("<help command was used")
    end	

--Bot Adding Info	
	if message.content == '<join' then
        message.channel:sendMessage('```here is the link to add the bot:``` https://discordapp.com/oauth2/authorize?&client_id=290228059599142913&scope=bot&permissions=0 ```here is the link to our dev/updates server:``` https://discord.me/smorebot')
		print("<join command was used")   
	end
	
	
end)

client:run('bot-token')
