//
//  Date+AsString.swift
//
//  Helpers against Date to return a Date as a formated string.
//
//  Created by Ben Tindall on 20/06/2020.
//

import Foundation

/**
 * Local date formatter instance as to not pollute the Date object.
 */
private let dateFormatter = DateFormatter()

public extension Date {

    /**
     * Returns a string representation of the Date in a DateFormatter Style.
     *
     * Here is a usage example:
     * ```
     * let date = Date()
     *
     * date.asString(inStyle: .full)   // Friday, June 29, 2007
     * date.asString(inStyle: .long)   // June 29, 2007
     * date.asString(inStyle: .medium) // Jun 29, 2007
     * date.asString(inStyle: .short)  // 6/29/07
     * ```
     *
     * - Parameters:
     *  - inStyle: The DateFormatter.Style that you wish to use to format the date.
     *  - locale: The locale that you wish to represent the date in.
     *
     * - Returns: A string of the date in a DateFormatter.Style format.
     */
    func asString(inStyle style: DateFormatter.Style, locale: String = "en_US_POSIX") -> String {
        dateFormatter.dateStyle = style
        dateFormatter.locale = NSLocale(localeIdentifier: locale) as Locale

        return dateFormatter.string(from: self)
    }

    /**
     * Returns a string representation of the Date in a custom formatted style.
     *
     * Here is a usage example:
     * ```
     * let date = Date()
     *
     * date.asString(inFormat: "yyyy-MM-dd HH:mm:ss") // 2007-06-29 10:00:00
     * ```
     *
     * - Parameters:
     *  - inFormat: The date format string that you wish the Date to be displayed in.
     *  - locale: The locale that you wish to represent the date in.
     *
     * - Returns: A string of the date in a custom format.
     */
    func asString(inFormat format: String, locale: String = "en_US_POSIX") -> String {
        dateFormatter.dateFormat = format
        dateFormatter.locale = NSLocale(localeIdentifier: locale) as Locale

        return dateFormatter.string(from: self)
    }
}
