//
//  WeatherWidget.swift
//  WeatherWidget
//
//  Created by Joshua Yang on 2/22/21.
//

import WidgetKit
import SwiftUI

@main
struct WeatherWidget: Widget {
    let kind: String = "WeatherWidget"
    var body: some WidgetConfiguration {
        StaticConfiguration(kind: kind, provider: WeatherTimeline()) { entry in
            WeatherEntryView(entry: entry)
        }
        .supportedFamilies([.systemSmall, .systemMedium, .systemLarge])
        .configurationDisplayName("Seattle Weather Widget")
        .description("This widget displays current weather for Seattle")
    }
}
