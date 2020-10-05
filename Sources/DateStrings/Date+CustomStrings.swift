//
//  Date+CustomStrings.swift
//
//  Helper computed properties that return custom formatted strings.
//
//  Created by Ben Tindall on 20/06/2020.
//

import Foundation

public extension Date {

    /**
     * Returns the current date as a datestamp formatted string.
     *
     * E.g. 2007-06-29 10:00:00
     *
     * Here is a usage example:
     * ```
     * let date = Date()
     * let datestamp = date.datestamp
     * ```
     */
    var datestamp: String {
        return self.asString(inFormat: "yyyy-MM-dd HH:mm:ss")
    }

    /**
     * Returns the current date in the ISO 8601 Python format as a string.
     *
     * E.g. 2007-06-29T10:00:00.000
     *
     * Here is a usage example:
     * ```
     * let date = Date()
     * let iso8601Python = date.iso8601Python
     * ```
     */
    var iso8601Python: String {
        return self.asString(inFormat: "yyyy-MM-dd'T'HH:mm:ss.SSS")
    }
}
