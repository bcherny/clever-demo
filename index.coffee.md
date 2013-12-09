
Imports

	cleverStatistics = require './cleverStatistics'

Compute!

	(cleverStatistics 'median', 'mean', 'mode').then (stats) ->
		console.log stats
	, (err) ->
		console.error err