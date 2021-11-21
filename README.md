# Fuzzer

Fuzzer allows to randomize your tests. The randomization is predictible using a seed if needed.

## Installation

_To be defined_

## Usage

Here is a simple example to use Fuzzer :
```swift
import Fuzzer

// return a random Int
let intValue = Fuzzer().getRandomInt()

// return a random Int in a range of 0 to 100
let intValue = Fuzzer().getRandomInt(in: 0..<100)

// return a random String
let stringValue = Fuzzer().getRandomString()

// return a random String with a size of 3
let stringValue = Fuzzer().getRandomString(size: 3)

// return an element of a list 
let val = Fuzzer().getRandomInArray(array: [MyObject(), MyObject(), MyObject(), MyObject()])

// use a specific seed to get the same result
let specificFuzzer = Fuzzer(seed: 1234)

```

## Next steps

[ ] Make it available to Cocoapods
[ ] Make it available to Carthage
[ ] Make it available to SPM
[ ] Add other random functions

## Contributing

Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.

Please make sure to update tests as appropriate.

## License

[MIT](https://choosealicense.com/licenses/mit/)

