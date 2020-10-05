//
//  Date+CustomStringsTests.swift
//
//
//  Created by Ben Tindall on 20/06/2020.
//

import XCTest
import Foundation

@testable import DateStrings

class DateCustomStringsTests: XCTestCase {

    func testItHasTheRightDatestamp() {
        // Given: A date that we want the datestamp for
        let date = Date(fromString: "2007-06-29 10:00:00", format: "yyyy-MM-dd HH:mm:ss")

        // When: The datestamp requested
        let datestamp = date.datestamp

        // Then
        XCTAssertEqual(datestamp, "2007-06-29 10:00:00")
    }

    func testItHasTheRightIso8601Python() {
        // Given: A date that we want the ISO 8601 Python format for
        let date = Date(fromString: "2007-06-29 10:00:00", format: "yyyy-MM-dd HH:mm:ss")

        // When: The ISO 8601 Python requested
        let iso8601Python = date.iso8601Python

        // Then
        XCTAssertEqual(iso8601Python, "2007-06-29T10:00:00.000")
    }
}
