# Swift Power Operator

A Swift utility that implements a Python-style power operator (`**`) for exponentiation operations.

## Overview

Swift doesn't have a built-in power operator like Python does. This project provides a clean, intuitive `**` syntax for performing exponentiation, making code more readable for developers familiar with Python.

## Technologies

- **Language**: Swift
- **Platform**: iOS
- **Format**: Swift Playground

## Usage

```swift
let result = 3 ** 3  // Returns 27
let squared = 5 ** 2 // Returns 25
let cubed = 2 ** 3   // Returns 8
```

## Implementation

```swift
infix operator ** : MultiplicationPrecedence

func ** <T: Numeric & SignedNumeric>(base: T, power: Int) -> T {
    precondition(power >= 0, "Power must be non-negative")
    if power == 0 { return 1 }
    var result = base
    for _ in 1..<power {
        result *= base
    }
    return result
}
```

## Features

- Custom infix operator with multiplication precedence
- Works with any `Numeric & SignedNumeric` type
- Supports positive exponents and zero
- Clean, readable syntax

## Requirements

- Xcode
- Swift 5.0+

## License

MIT License

![Swift Power](https://github.com/The-Odd-Institute/Swifit-Power/blob/main/Swift**.png?raw=true)
