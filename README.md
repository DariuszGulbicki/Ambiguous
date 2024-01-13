# Ambiguous
**Swift library for dealing with the unknown**

Ambiguous is a Swift library for dealing with the unknown. It provides a set of tools for working with uncertain data.
Everything is based on the `Ambiguous` type which is a wrapper around a value that can be either any or `nil`.
However, the `Ambiguous` type will automatically be converted to the wrapped type when it is used in a context that requires a specific type, or will return a default value such as `0` or `false` when used in a context that requires a boolean or numeric value.

## Installation

### Swift Package Manager

You can use [The Swift Package Manager](https://swift.org/package-manager) to install `Colorizer` by adding the proper description to your `Package.swift` file:

```swift
.package(url: "https://github.com/DariuszGulbicki/ambiguous.git", from: "1.0.0")
```

## Usage

Import the library:

```swift
import Ambiguous
```

Create an ambiguous value:

```swift
let ambiguous: Ambiguous(1)
```

Use the ambiguous value:

```swift
let value = ambiguous + 1
// Or you can manually convert it to a specific type
let value = ambiguous.int + 1
```

Check if the ambiguous value is `nil`:

```swift
if ambiguous.isNil {
    // Do something
}
```

Check if the value is of a specific type:

```swift
if ambiguous.isInt {
    // Do something
}
```


## Contributing

Contributions are welcome. Please open an issue or submit a pull request.

## License

Colorizer is released under the MIT license. See LICENSE for details.