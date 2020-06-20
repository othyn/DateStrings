//
//  Date+DayStrings.swift
//
//  Helper computed properties that return day based strings.
//
//  Created by Ben Tindall on 20/06/2020.
//

import Foundation

public extension Date {

    /**
     * Returns the current day as a full day of the week string.
     *
     * E.g. Friday or Sunday
     *
     * Here is a usage example:
     * ```
     * let date = Date()
     * let day = date.day
     * ```
     */
    var day: String {
        return self.asString(inFormat: "EEEE")
    }

    /**
     * Returns the current day as a short day of the week string.
     *
     * E.g. Fri or Sun
     *
     * Here is a usage example:
     * ```
     * let date = Date()
     * let day = date.dayShort
     * ```
     */
    var dayShort: String {
        return self.asString(inFormat: "E")
    }

    /**
     * Returns the current day as a one character string.
     *
     * E.g. 29 or 2
     *
     * Here is a usage example:
     * ```
     * let date = Date()
     * let day = date.dayAsSingleDigit
     * ```
     */
    var dayAsSingleDigit: String {
        return self.asString(inFormat: "d")
    }

    /**
     * Returns the current day as a two character string.
     *
     * E.g. 29 or 02
     *
     * Here is a usage example:
     * ```
     * let date = Date()
     * let day = date.dayAsDoubleDigit
     * ```
     */
    var dayAsDoubleDigit: String {
        return self.asString(inFormat: "dd")
    }
}
