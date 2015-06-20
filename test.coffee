level = require 'level'
db = level('./db')
letter = require './src/index'

db.put 'new', 'test', (err)->
	db.get 'new', (err, value) ->
    		return console.log 'Ooops!', err if (err)

    		console.log 'name=' + value

client = {}

letter.watch(client)
client.animal = "penguin"
delay = (ms, func) -> setInterval func, ms




delay  500, -> client.time = new Date().getSeconds()




letter.run()
