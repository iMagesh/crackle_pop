# Crackle Pop

A small Vanilla Ruby implementation of the CracklePop exercise.

## Behavior

`code_for(number)` returns:

- `CracklePop` for multiples of 3 and 5
- `Crackle` for multiples of 3
- `Pop` for multiples of 5
- The original number for other integers
- `0` for zero
- `nil` for non-integer input

`crackle_pop(first = 1, last = 100)` evaluates every number in the inclusive range, prints each result, and returns the results as an array. It returns an empty array when `first` is greater than `last`.

## Usage

Run the default range from 1 to 100:

```sh
ruby -r ./crackle_pop -e 'crackle_pop'
```

Use the methods from another Ruby file:

```ruby
require_relative 'crackle_pop'

puts code_for(15)          # CracklePop
results = crackle_pop(1, 15)
```

## Tests

Run the lightweight test suite with:

```sh
ruby tests.rb
```
