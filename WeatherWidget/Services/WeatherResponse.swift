//
//  WeatherResponse.swift
//  WeatherWidgetExtension
//
//  Created by Joshua Yang on 2/22/21.
//

import Foundation

struct WeatherResponse: Codable {
    let forecast: [Weather]
}
