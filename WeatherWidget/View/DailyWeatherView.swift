//
//  DailyWeather.swift
//  WeatherWidgetExtension
//
//  Created by Joshua Yang on 2/23/21.
//

import SwiftUI

struct DailyWeatherView: View {
    let weather : Weather
    var body: some View {
        VStack (alignment: .leading) {
            Text(weather.name.lowercased().contains("night") ? "\(weather.name.prefix(2))🌙" : weather.name.prefix(3))
            Text("\(weather.temperature)º\(weather.unit)")
            Text(WeatherUtil.getWeatherIcon(condition: weather.description)).padding(.top, 10)
        }.padding()
    }
}

