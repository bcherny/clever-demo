cleverStatistics
================

[![Build Status](https://travis-ci.org/eighttrackmind/clever-demo.png)](https://travis-ci.org/eighttrackmind/clever-demo.png)

A neatly packaged statistics computer for Clever's demo API.

## Usage

```coffee
success = (result) -> ...
error = (err) -> ...

(cleverStatistics 'median', 'mean', 'mode', ...).then success, error
```

## Supported statistics

- min
- max
- mean
- median
- mode
- sd
- size
- sum
- variance

*(see https://npmjs.org/package/summary)*

## Docs

https://github.com/eighttrackmind/clover-demo/blob/master/cleverStatistics.coffee.md

## Testing

```bash
npm install
npm test
```

## Todo

- Mock API response for unit tests to separate unit from integration testing