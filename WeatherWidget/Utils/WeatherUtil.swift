//
//  WeatherUtil.swift
//  WeatherWidgetExtension
//
//  Created by Joshua Yang on 2/23/21.
//

import SwiftUI

struct WeatherUtil {
    
    static func getWeatherIcon(condition: String) -> String {
        let current = condition.lowercased()
        switch current {
        case _ where current.contains("partly sunny"):
            return "⛅️"
        case _ where current.contains("cloudy"):
            return "☁️"
        case _ where current.contains("drizzle"):
            return "🌧"
        case _ where current.contains("rain"):
            return "🌧"
        case _ where current.contains("sunny"):
            return "🌤"
        case _ where current.contains("clear"):
            return "☀️"
        default:
            return "❌"
        }
    }
}

