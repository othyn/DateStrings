//
//  Date+MonthStringsTests.swift
//
//
//  Created by Ben Tindall on 20/06/2020.
//

import XCTest
import Foundation

@testable import DateStrings

class DateMonthStringsTests: XCTestCase {

    func testItHasTheRightMonth() {
        // Given: A date that we want the month for
        let date = Date(fromString: "2007-06-29")

        // When: The month requested
        let month = date.month

        // Then
        XCTAssertEqual(month, "June")
    }

    func testItHasTheRightShortMonth() {
        // Given: A date that we want the short month for
        let date = Date(fromString: "2007-06-29")

        // When: The short month requested
        let month = date.monthShort

        // Then
        XCTAssertEqual(month, "Jun")
    }

    func testItHasTheRightSingleDigitMonth() {
        // Given: A date that we want the single digit month for
        let date = Date(fromString: "2007-06-29")

        // When: The single digit month requested
        let month = date.monthAsSingleDigit

        // Then
        XCTAssertEqual(month, "6")
    }

    func testItHasTheRightDoubleDigitMonth() {
        // Given: A date that we want the double digit month for
        let date = Date(fromString: "2007-06-29")

        // When: The double digit month requested
        let month = date.monthAsDoubleDigit

        // Then
        XCTAssertEqual(month, "06")
    }
}
