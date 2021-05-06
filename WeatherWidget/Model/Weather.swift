//
//  Weather.swift
//  WeatherExampleApp
//
//  Created by Joshua Yang on 2/22/21.
//

import Foundation

struct Weather: Codable {
    let name: String
    let temperature: Int
    let unit: String
    let description: String
}
