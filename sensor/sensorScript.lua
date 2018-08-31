function call(topic, message)
	print("Topic: "..topic.."\tMsg.: "..message)
end

function getHeartbeatRate()
	print("5")
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
	print("4")
	call(topic, message)
	canvas:attrColor(255,255,255,0)
	canvas:drawRect('fill', 0, 50, canvas:attrSize())
	canvas:attrFont("vera", 36)
	canvas:attrColor(95,159,159,255)
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

print("conectado show sinistrow")

function update(cor)
	print("2")
	--coroutine.resume(cor)
	print("5")
	--while true do
		client:handler()
		socket.sleep(1)
		--coroutine.yield()
	--end
	print("3")
	event.timer(1500, update)
end

--'Handler' function.
function handler(evt)
	print("1")
	update(coGetHeartbeatRate)
end

event.register(handler)
