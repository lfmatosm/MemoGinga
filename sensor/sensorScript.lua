function call(topic, message)
	print("Topic: "..topic.."\tMsg.: "..message)
end

function getHeartbeatRate()
	while true do
		client:handler()
		socket.sleep(1)
		coroutine.yield()
	end
end

--Makes the program wait for 'n' seconds.
function sleep(n)
	local ntime = os.clock() + n
  	repeat until os.clock() > ntime
end

--Draws a text on the screen.
function drawText(topic, message)
	call(topic, message)
	canvas:attrColor('black')
	canvas:drawRect('fill', 0, 50, canvas:attrSize())
	canvas:attrFont("vera", 36)
	canvas:attrColor("blue")
	canvas:drawText(0, 50, string.format("%s bpm", message))
	canvas:flush()
end

server = 'm11.cloudmqtt.com'
user = 'ghpqajfd'
password = 'LxnxmMcKgIYt'
port = 17639

--Variables for MQTT client use.
mqtt = require 'paho.mqtt'
socket = require 'socket'
client = mqtt.client.create(server, port, drawText)

client:auth(user, password)
client:connect('conn_eyre')
client:subscribe({'oi'})

coGetHeartbeatRate = coroutine.create(getHeartbeatRate)

function update(cor)
	coroutine.resume(cor)
	if coroutine.status(cor) ~= 'dead' then event.timer(1000, update) end
end

--'Handler' function.
function handler(evt)
	--while (true) do	
		--getHeartbeatRate() 
		update(coGetHeartbeatRate)
	--end
end

event.register(handler)
