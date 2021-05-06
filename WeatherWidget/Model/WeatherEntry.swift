//
//  WeatherEntry.swift
//  WeatherExampleApp
//
//  Created by Joshua Yang on 2/22/21.
//

import WidgetKit
import SwiftUI

struct WeatherEntry: TimelineEntry {
    public let date: Date
    public let weatherInfo: [Weather]
    var relevance: TimelineEntryRelevance? {
        return TimelineEntryRelevance(score: 50)
    }
}
