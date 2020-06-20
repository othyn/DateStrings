//
//  Date+ToString.swift
//
//  Helpers against Date to return a Date as a formated string as an alternate API.
//
//  Created by Ben Tindall on 20/06/2020.
//

import Foundation

/**
 * This is purely as an alternate API to the .asString(...) accessors.
 */
public extension Date {

    /**
     * Returns a string representation of the Date in a DateFormatter Style.
     *
     * Here is a usage example:
     * ```
     * let date = Date()
     *
     * date.toString(inStyle: .full)   // Friday, June 29, 2007
     * date.toString(inStyle: .long)   // June 29, 2007
     * date.toString(inStyle: .medium) // Jun 29, 2007
     * date.toString(inStyle: .short)  // 6/29/07
     * ```
     *
     * - Parameters:
     *  - inStyle: The DateFormatter.Style that you wish to use to format the date.
     *  - locale: [Optional] The locale that you wish to represent the date in.
     *
     * - Returns: A string of the date in a DateFormatter.Style format.
     */
    func toString(inStyle style: DateFormatter.Style, locale: String? = nil) -> String {
        return self.asString(inStyle: style, locale: locale)
    }

    /**
     * Returns a string representation of the Date in a custom formatted style.
     *
     * Here is a usage example:
     * ```
     * let date = Date()
     *
     * date.toString(inFormat: "yyyy-MM-dd HH:mm:ss") // 2007-06-29 10:00:00
     * ```
     *
     * - Parameters:
     *  - inFormat: The date format string that you wish the Date to be displayed in.
     *  - locale: [Optional] The locale that you wish to represent the date in.
     *
     * - Returns: A string of the date in a custom format.
     */
    func toString(inFormat format: String, locale: String? = nil) -> String {
        return self.asString(inFormat: format, locale: locale)
    }
}
