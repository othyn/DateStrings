//
//  Date+YearStringsTests.swift
//
//
//  Created by Ben Tindall on 20/06/2020.
//

import XCTest
import Foundation

@testable import DateStrings

class DateYearStringsTests: XCTestCase {

    func testItHasTheRightYear() {
        // Given: A date that we want the year for
        let date = Date(fromString: "2007-06-29")

        // When: The year requested
        let year = date.year

        // Then
        XCTAssertEqual(year, "2007")
    }

    func testItHasTheRightShortYear() {
        // Given: A date that we want the short year for
        let date = Date(fromString: "2007-06-29")

        // When: The short year requested
        let year = date.yearShort

        // Then
        XCTAssertEqual(year, "07")
    }
}
