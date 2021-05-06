//
//  WeatherView.swift
//  WeatherWidgetExtension
//
//  Created by Joshua Yang on 2/23/21.
//

import SwiftUI

struct WeatherView: View {
    let weather: Weather
    let updatedDate: Date
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("Seattle")
            Text("\(weather.temperature)º\(weather.unit)")
                .font(.largeTitle)
            Text(WeatherUtil.getWeatherIcon(condition: weather.description)).padding(.top, 10)
            Text(weather.description)
                .font(.footnote)
            HStack {
                Spacer()
                Text("Updated: \(updatedDate.timeOnly())")
                    .font(.system(size: 12))
                    .foregroundColor(Color.gray.opacity(0.8))
            }
        }.padding()
    }
}

