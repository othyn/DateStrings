//
//  Date+AsStringTests.swift
//
//
//  Created by Ben Tindall on 20/06/2020.
//

import XCTest
import Foundation

@testable import DateStrings

class DateAsStringTests: XCTestCase {

    func testItMakesAFullStyledDate() {
        // Given: A date that we want the full string style for
        let date = Date(fromString: "2007-06-29", locale: "en_US_POSIX")

        // When: The date style requested is full
        let dateFullString = date.asString(inStyle: .full, locale: "en_US_POSIX")

        // Then
        XCTAssertEqual(dateFullString, "Friday, June 29, 2007")
    }

    func testItMakesALongStyledDate() {
        // Given: A date that we want the long string style for
        let date = Date(fromString: "2007-06-29", locale: "en_US_POSIX")

        // When: The date style requested is long
        let dateLongString = date.asString(inStyle: .long, locale: "en_US_POSIX")

        // Then
        XCTAssertEqual(dateLongString, "June 29, 2007")
    }

    func testItMakesAMediumStyledDate() {
        // Given: A date that we want the medium string style for
        let date = Date(fromString: "2007-06-29", locale: "en_US_POSIX")

        // When: The date style requested is medium
        let dateMediumString = date.asString(inStyle: .medium, locale: "en_US_POSIX")

        // Then
        XCTAssertEqual(dateMediumString, "Jun 29, 2007")
    }

    func testItMakesAShortStyledDate() {
        // Given: A date that we want the short string style for
        let date = Date(fromString: "2007-06-29", locale: "en_US_POSIX")

        // When: The date style requested is short
        let dateShortString = date.asString(inStyle: .short, locale: "en_US_POSIX")

        // Then
        XCTAssertEqual(dateShortString, "6/29/07")
    }

    func testItMakesACustomFormattedDate() {
        // Given: A date that we want the short string style for
        let date = Date(fromString: "2007-06-29 23:49:59", format: "yyyy-MM-dd HH:mm:ss", locale: "en_US_POSIX")

        // When: The date format requested is a custom format
        let dateCustomString = date.asString(inFormat: "yyyy-MM-dd HH:mm:ss", locale: "en_US_POSIX")

        // Then
        XCTAssertEqual(dateCustomString, "2007-06-29 23:49:59")
    }
}
