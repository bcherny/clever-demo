cleverStatistics
================

A neatly packaged statistics computer for Clever's demo API.

## Usage

```coffee
success = (result) -> ...
error = (err) -> ...

(cleverStatistics 'median', 'mean', 'mode', ...).then success, error
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

## Testing

```bash
npm install
npm test
```

## Todo

- Mock API response for unit tests to separate unit from integration testing