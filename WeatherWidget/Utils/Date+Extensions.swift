//
//  Date+Extensions.swift
//  WeatherWidgetExtension
//
//  Created by Joshua Yang on 2/22/21.
//

import Foundation

extension Date {
    func timeOnly() -> String {
        let fromDate = self
        let formatter = DateFormatter()
        formatter.dateFormat = "hh:mm a"
        return formatter.string(from: fromDate)
    }
}
