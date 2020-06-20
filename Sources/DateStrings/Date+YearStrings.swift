//
//  Date+YearStrings.swift
//
//  Helper computed properties that return year based strings.
//
//  Created by Ben Tindall on 20/06/2020.
//

import Foundation

public extension Date {

    /**
     * Returns the current year as a full four digit string.
     *
     * E.g. 2007 or 2020
     *
     * Here is a usage example:
     * ```
     * let date = Date()
     * let year = date.year
     * ```
     */
    var year: String {
        return self.asString(inFormat: "yyyy")
    }

    /**
     * Returns the current year as a short two digit string.
     *
     * E.g. 07 or 20
     *
     * Here is a usage example:
     * ```
     * let date = Date()
     * let year = date.yearShort
     * ```
     */
    var yearShort: String {
        return self.asString(inFormat: "yy")
    }
}
