//
//  Date+DayStringsTests.swift
//
//
//  Created by Ben Tindall on 20/06/2020.
//

import XCTest
import Foundation

@testable import DateStrings

class DateDayStringsTests: XCTestCase {

    func testItHasTheRightDay() {
        // Given: A date that we want the day for
        let date = Date(fromString: "2007-06-29")

        // When: The day requested
        let day = date.day

        // Then
        XCTAssertEqual(day, "Friday")
    }

    func testItHasTheRightShortDay() {
        // Given: A date that we want the short day for
        let date = Date(fromString: "2007-06-29")

        // When: The short day requested
        let day = date.dayShort

        // Then
        XCTAssertEqual(day, "Fri")
    }

    func testItHasTheRightSingleDigitDay() {
        // Given: A date that we want the single digit day for
        let date = Date(fromString: "2007-06-05")

        // When: The single digit day requested
        let day = date.dayAsSingleDigit

        // Then
        XCTAssertEqual(day, "5")
    }

    func testItHasTheRightDoubleDigitDay() {
        // Given: A date that we want the double digit day for
        let date = Date(fromString: "2007-06-29")

        // When: The double digit day requested
        let day = date.dayAsDoubleDigit

        // Then
        XCTAssertEqual(day, "29")
    }
}
