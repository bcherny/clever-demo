
Imports

	cleverStatistics = require './cleverStatistics'

Compute!

	(do cleverStatistics).then (stats) ->
		console.log stats
	, (err) ->
		console.error err