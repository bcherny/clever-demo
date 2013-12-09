cleverStatistics
================

A neatly packaged mean computer for Clever's demo API

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

## done
Processes API responses

		done = (err, sections) ->

			if err
				deferred.reject Error err

			deferred.resolve mean sections

## mean
compute mean

		mean = (sections) ->

			count = sections.length
			sum = sections
			.map (section) ->
				(do section.toJSON).students.length
			.reduce (a, b) ->
				a + b

			sum/count

Query

		clever.Section.find {}, done

Return a promise

		deferred.promise

Export

	module.exports = cleverStatistics