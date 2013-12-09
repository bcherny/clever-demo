
Imports

	Clever = require 'clever'
	Promise = require 'when'

Package it as a promise-giving function

	cleverStatistics = ->

		deferred = do Promise.defer

Config

		config =
			key: 'DEMO_KEY'

Instantiate clever

		clever = new Clever config.key

Setup

		done = (err, sections) ->

			if err
				deferred.reject Error err

			deferred.resolve average sections

		average = (sections) ->

			count = sections.length
			sum = sections
			.map (section) ->
				(do section.toJSON).students.length
			.reduce (a, b) ->
				a + b

			sum/count

Query

		clever.Section.find {}, done

		deferred.promise

	(do cleverStatistics).then (stats) ->
		console.log stats
	, (err) ->
		console.error err