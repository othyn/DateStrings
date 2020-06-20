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
     * date.toString(inStyle: .full)   // Wednesday, November 27, 2019
     * date.toString(inStyle: .long)   // November 27, 2019
     * date.toString(inStyle: .medium) // Nov 27, 2019
     * date.toString(inStyle: .short)  // 27/11/19
     * ```
     *
     * - Parameters:
     * - inStyle: The DateFormatter.Style that you wish to use to format the date.
     *
     * - Returns: A string of the date in a DateFormatter.Style format.
     */
    func toString(inStyle style: DateFormatter.Style) -> String {
        return self.asString(inStyle: style)
    }

    /**
     * Returns a string representation of the Date in a custom formatted style.
     *
     * Here is a usage example:
     * ```
     * let date = Date()
     *
     * date.toString(inFormat: "yyyy-MM-dd HH:mm:ss") // 2019-11-27 12:45:30
     * ```
     *
     * - Parameters:
     *      - inFormat: The date format string that you wish the Date to be displayed in.
     *
     * - Returns: A string of the date in a custom format.
     */
    func toString(inFormat format: String) -> String {
        return self.asString(inFormat: format)
    }
}
