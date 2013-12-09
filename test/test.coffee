
cleverStatistics = require '../cleverStatistics'

exports.mean = (test) ->

	test.expect 1

	(cleverStatistics 'mean').then (stats) ->
		test.equal (Math.round stats.mean), 32
		do test.done

exports.variadic = (test) ->

	test.expect 1

	(cleverStatistics 'min', 'max').then (stats) ->
		test.deepEqual stats,
			min: 19
			max: 62
		do test.done