# 🗓 DateStrings

[![Build and Tests](https://github.com/othyn/DateStrings/workflows/Build%20and%20Tests/badge.svg)](https://github.com/othyn/DateStrings/actions?query=workflow%3A%22Build+and+Tests%22)
[![Code Coverage](https://img.shields.io/badge/Code%20Coverage-100%25-blueviolet)](https://github.com/othyn/DateStrings/actions?query=workflow%3A%22Build+and+Tests%22)
[![GitHub issues](https://img.shields.io/github/issues/othyn/DateStrings)](https://github.com/othyn/DateStrings/issues)
[![GitHub forks](https://img.shields.io/github/forks/othyn/DateStrings)](https://github.com/othyn/DateStrings/network)
[![GitHub stars](https://img.shields.io/github/stars/othyn/DateStrings)](https://github.com/othyn/DateStrings/stargazers)
[![GitHub license](https://img.shields.io/github/license/othyn/DateStrings)](https://github.com/othyn/DateStrings/blob/master/LICENSE)
[![Quote](https://img.shields.io/badge/just-one%20more%20thing-lightgrey)](https://en.wikipedia.org/wiki/IPhone_(1st_generation))
[![Love](https://img.shields.io/badge/built%20with-love-red)](https://img.shields.io/badge/built%20with-love-red)

A Swift 5 `Date` extension that adds helpful string accessors. With new methods and properties that make getting a string from a Date easy, with plenty of customisation, locale handled automatically and available options. There is also a handy init from string too!

## Table of contents

- [Installation](#installation)
  - [Adding via Xcode](#adding-via-xcode)
  - [Adding via SPM Manually](#adding-via-spm-manually)
- [Importing The Library Into Your Project](#importing-the-library-into-your-project)
- [Usage](#usage)
  - [Initialiser](#initialiser)
  - [asString](#asString)
    - [toString](#toString)
  - [day](#day)
  - [dayShort](#dayshort)
  - [dayAsSingleDigit](#dayassingledigit)
  - [dayAsDoubleDigit](#dayasdoubledigit)
  - [month](#month)
  - [monthShort](#monthshort)
  - [monthAsSingleDigit](#monthassingledigit)
  - [monthAsDoubleDigit](#monthasdoubledigit)
  - [year](#year)
  - [yearShort](#yearshort)
- [Building](#building)
- [Testing](#testing)
- [Useful Reference Material](#useful-reference-material)
- [Changelog](#changelog)
- [Versioning](#versioning)

## Installation

This is Swift 5 package and makes use of Swift Package Manager (SPM) to integrate it into your Swift project.

Swift Swift Swift.

### Adding via Xcode

Add the package via the following menu's whilst in your Xcode project:

```plaintext
File > Swift Packages > Add Package Dependency...
```

Paste this git repo URL into the search bar at the top:

```url
https://github.com/othyn/DateStrings.git
```

Press the enter key or `Next` and for the rules, select `Version` as `Up to Next Major`: `1.0.0` < `2.0.0`.

Hit `Next` through the following pages until added to your project.

### Adding via SPM Manually

Add the following as a dependency to your `Package.swift` within your project directory:

```swift
.package(url: "https://github.com/othyn/DateStrings.git", .upToNextMajor(from: "1.0.0"))
```

After specifying "DateStrings" as a dependency of the target in which you want to use it, run swift package update.

## Importing The Library Into Your Project

Add `import DateStrings` to the top of the file you wish to use the library in.

This package is an extension to the base `Date` object, with all methods and properties accessible via any inherited objects or the `Date` object itself.

## Usage

### Initialiser

There is a new initialiser that allows for quickly initialising a `Date` object from a date string. You can provide a custom format for the string.

By default, the locale will be the locale of the device that the app is being run on. You can stop this by passing a fixed locale string to the method as the `locale` parameter.

```swift
init(fromString dateString: String, format: String = "yyyy-MM-dd", locale: String? = nil) { ... }
```

This allows for the following to be used to create a `Date` instance object from a string.

```swift
let date = Date(fromString: "2007-06-29")
```

This also allows for passing in a custom format and/or a locale.

```swift
let date = Date(fromString: "2007-06-29 23:49:59", format: "yyyy-MM-dd HH:mm:ss", locale: "en_US_POSIX")
```

### asString

This method allows you to get the date in a format of your choosing, from a `DateFormatter.Style` or a custom provided format and/or locale.

By default, the locale will be the locale of the device that the app is being run on. You can stop this by passing a fixed locale string to the method as the `locale` parameter.

```swift
func asString(inStyle style: DateFormatter.Style, locale: String? = nil) -> String { ... }

func asString(inFormat format: String, locale: String? = nil) -> String { ... }
```

An example of the `inStyle` usage:

```swift
let date = Date(fromString: "2007-06-29")

let dateFullString = date.asString(inStyle: .full)

...

Text(dateFullString) // Friday, June 29, 2007
```

An example of the `inFormat` usage:

```swift
let date = Date(fromString: "2007-06-29 23:49:59", format: "yyyy-MM-dd HH:mm:ss")

let dateCustomString = date.asString(inFormat: "yyyy-MM-dd HH:mm:ss")

...

Text(dateCustomString) // 2007-06-29 23:49:59
```

#### toString

There is also an alternative syntax `toString`, which mirrors the `asString` methods exactly (uses them internally too, just maps the functions forward). Just a personal preference of naming on this one. As in, use it if you prefer the `toString` method names.


An example of the `inStyle` usage:

```swift
let date = Date(fromString: "2007-06-29")

let dateFullString = date.toString(inStyle: .full)

...

Text(dateFullString) // Friday, June 29, 2007
```

An example of the `inFormat` usage:

```swift
let date = Date(fromString: "2007-06-29 23:49:59", format: "yyyy-MM-dd HH:mm:ss")

let dateCustomString = date.toString(inFormat: "yyyy-MM-dd HH:mm:ss")

...

Text(dateCustomString) // 2007-06-29 23:49:59
```

### day

A helpful computed property for getting the day from the `Date`.

```swift
let date = Date(fromString: "2007-06-29")

let day = date.day

...

Text(day) // Friday
```

### dayShort

A helpful computed property for getting the short day from the `Date`.

```swift
let date = Date(fromString: "2007-06-29")

let day = date.dayShort

...

Text(day) // Fri
```

### dayAsSingleDigit

A helpful computed property for getting the single digit day from the `Date`.

```swift
let date = Date(fromString: "2007-06-05")

let day = date.dayAsSingleDigit

...

Text(day) // 5
```

### dayAsDoubleDigit

A helpful computed property for getting the double digit day from the `Date`.

```swift
let date = Date(fromString: "2007-06-05")

let day = date.dayAsDoubleDigit

...

Text(day) // 05
```

### month

A helpful computed property for getting the month from the `Date`.

```swift
let date = Date(fromString: "2007-06-29")

let month = date.month

...

Text(month) // June
```

### monthShort

A helpful computed property for getting the short month from the `Date`.

```swift
let date = Date(fromString: "2007-06-29")

let month = date.monthShort

...

Text(month) // Jun
```

### monthAsSingleDigit

A helpful computed property for getting the single digit month from the `Date`.

```swift
let date = Date(fromString: "2007-06-29")

let month = date.monthAsSingleDigit

...

Text(month) // 6
```

### monthAsDoubleDigit

A helpful computed property for getting the double digit month from the `Date`.

```swift
let date = Date(fromString: "2007-06-29")

let month = date.monthAsDoubleDigit

...

Text(month) // 06
```

### year

A helpful computed property for getting the year from the `Date`.

```swift
let date = Date(fromString: "2007-06-29")

let year = date.year

...

Text(year) // 2007
```

### yearShort

A helpful computed property for getting the short year from the `Date`.

```swift
let date = Date(fromString: "2007-06-29")

let year = date.yearShort

...

Text(year) // 07
```

## Building

To build, use Xcode's standard build tools via `⌘ + B` or use the `swift` CLI command in the project root directory:

```sh
swift build
```

## Testing

To run the tests, use Xcode's standard test tools via `⌘ + U` or use the `swift` CLI command in the project root directory:

```sh
swift test
```

## Useful Reference Material

Below are some really useful references that I found when building this extension Library to aid with date formatting and converting
formats.

Especially as Apple don't really document this themselves anywhere. Although if someone does find it, please submit a PR and
correct me.

- A website that allows you to put in a date format and test date formats inline with DateFormatter and NSDateFormatter:
  - [https://nsdateformatter.com/](https://nsdateformatter.com/)
  - (It also has a really handy reference/cheat sheet for all the character strings)
- Useful SO posts regarding date formats for DateFormatter and NSDateFormatter that I stumbled upon originally:
  - [https://stackoverflow.com/a/52297497/4494375](https://stackoverflow.com/a/52297497/4494375)
  - [https://stackoverflow.com/a/43821434/4494375](https://stackoverflow.com/a/43821434/4494375)
  - [https://stackoverflow.com/a/48179960/4494375](https://stackoverflow.com/a/48179960/4494375)
  - [https://stackoverflow.com/a/24090354/4494375](https://stackoverflow.com/a/24090354/4494375)

There is also [something to note](https://stackoverflow.com/q/27321993/4494375) around how creating `NSDateFormatter` and
`DateFormatter` are an [expensive operation](https://stackoverflow.com/q/27321993/4494375), with Apple even stating so in their
2014 docs. If anyone has any ways to optimise this, I'm all ears. I've tried to be as performant as possible to what I know.

There is also an easter egg in the library for funsies, [if you know what to look for](https://en.wikipedia.org/wiki/IPhone_(1st_generation)).

## Changelog

[View the repo's releases to see the change history](https://github.com/othyn/DateStrings/releases).

## Versioning

[This project uses Semantic Versioning](https://semver.org/).
