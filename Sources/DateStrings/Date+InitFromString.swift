//
//  Date+InitFromString.swift
//
//  Helper initialiser that lets you initialise a Date object from any string format you please.
//
//  Created by Ben Tindall on 20/06/2020.
//

import Foundation

public extension Date {

    /**
     * This new helper initialiser lets us initialise a Date object from any string format we please.
     */
    init(fromString dateString: String, format: String = "yyyy-MM-dd", locale: String = "en_US_POSIX") {
        let dateStringFormatter = DateFormatter()

        dateStringFormatter.dateFormat = format
        dateStringFormatter.locale = NSLocale(localeIdentifier: locale) as Locale

        let date = dateStringFormatter.date(from: dateString)!

        self.init(timeInterval: 0, since: date)
    }
}
