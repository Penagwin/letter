exports.run = (port = 8000)->
	io = require('socket.io')()
	io.on 'connection', (socket) ->
		console.log exports.watching
		Object.observe exports.watching,    (changes)->
			console.log changes
			io.emit('update', exports.watching )
	io.listen port
	console.log port

exports.watch = (nitem)->
	exports.watching = nitem
