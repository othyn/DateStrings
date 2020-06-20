//
//  Date+InitFromString.swift
//
//
//  Created by Ben Tindall on 20/06/2020.
//

import XCTest
import Foundation

@testable import DateStrings

class DateInitFromString: XCTestCase {

    func testItInitsFromAString() {
        // Given: A date that we want to initialise from a string
        XCTAssertNoThrow(
            Date(fromString: "2007-06-29"),
            "The Date should have initialised from a string."
        )
    }

    func testItInitsFromAStringWithACustomFormat() {
        // Given: A date that we want to initialise from a string with a custom format
        XCTAssertNoThrow(
            Date(fromString: "2007-06-29 23:49:59", format: "yyyy-MM-dd HH:mm:ss", locale: "en_US_POSIX"),
            "The Date should have initialised from a string with a custom format."
        )
    }
}
