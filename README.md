# DateStrings

A Swift 5 Date extension that adds helpful string interpretations.

## How to use

This project is a Swift 5 package and makes use of Swift Package Manager (SPM) to integrate it into your Swift project.

Swift Swift Swift.

This package is an extension to the base `Date` object. So all options are accessible via any inherited objects or the `Date` object
itself.

### Adding via Xcode

Add the package via the following menu's whilst in your Xcode project:

```plaintext
File > Swift Packages > Add Package Dependency...
```

Paste this git repo URL into the search bar at the top and:

```url
https://github.com/othyn/DateStrings.git
```

Press the enter key or `Next` and for the rules, select `Version` as `Up to Next Major`: `1.0.0` < `2.0.0`.

Hit `Next` through the following pages until added to your project.

### Adding via SPM manually

Add the following as a dependency to your `Package.swift` within your project directory:

```swift
.package(url: "https://github.com/othyn/DateStrings.git", .upToNextMajor(from: "1.0.0"))
```

After specifying "DateStrings" as a dependency of the target in which you want to use it, run swift package update.

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

## Useful reference material

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

There is also an easter egg in the library for funsies, if you know what to look for.
