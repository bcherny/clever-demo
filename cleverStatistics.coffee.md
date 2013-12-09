cleverStatistics
================

A neatly packaged mean computer for Clever's demo API.

## Usage

```coffee
success = (result) -> ...
error = (err) -> ...

(cleverStatistics 'mean', ...).then success, error
```

## Supported statistics (see https://npmjs.org/package/summary)

- min
- max
- mean
- median
- mode
- sd
- size
- sum
- variance

## Source

Imports

	Clever = require 'clever'
	Promise = require 'when'
	summary = require 'summary'

Package it as a promise-giving function

	cleverStatistics = (want...) ->

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

			stats = compute sections
			result = {}

			for method in want when method of stats
				result[method] = do stats[method]
			
			deferred.resolve result

## compute
compute statistics

		compute = (sections) ->

			stats = summary sections.map (section) ->
				(do section.toJSON).students.length
			, true

Query

		clever.Section.find {}, done

Return a promise

		deferred.promise

Export

	module.exports = cleverStatistics