
Imports

	Clever = require 'clever'

Config

	config =
		key: 'DEMO_KEY'

Instantiate clever

	clever = new Clever config.key

Query

	stream = clever.Sections
	.find()
	.stream()

	average = 0

	stream.on 'data', (section) ->

		console.log section

	stream.on 'end', ->

		console.log 'loaded!'