//
//  Date+MonthStrings.swift
//
//  Helper computed properties that return month based strings.
//
//  Created by Ben Tindall on 20/06/2020.
//

import Foundation

public extension Date {

    /**
     * Returns the current month as a full month of the year string.
     *
     * E.g. June or September
     *
     * Here is a usage example:
     * ```
     * let date = Date()
     * let month = date.month
     * ```
     */
    var month: String {
        return self.asString(inFormat: "MMMM")
    }

    /**
     * Returns the current month as a short month of the year string.
     *
     * E.g. Jun or Sep
     *
     * Here is a usage example:
     * ```
     * let date = Date()
     * let month = date.monthShort
     * ```
     */
    var monthShort: String {
        return self.asString(inFormat: "MMM")
    }

    /**
     * Returns the current month as a one character string.
     *
     * E.g. 6 or 11
     *
     * Here is a usage example:
     * ```
     * let date = Date()
     * let month = date.monthAsSingleDigit
     * ```
     */
    var monthAsSingleDigit: String {
        return self.asString(inFormat: "M")
    }

    /**
     * Returns the current month as a two character string.
     *
     * E.g. 06 or 11
     *
     * Here is a usage example:
     * ```
     * let date = Date()
     * let month = date.monthAsDoubleDigit
     * ```
     */
    var monthAsDoubleDigit: String {
        return self.asString(inFormat: "MM")
    }
}
