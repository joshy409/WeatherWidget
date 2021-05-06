//
//  WeatherEntryView.swift
//  WeatherWidgetExtension
//
//  Created by Joshua Yang on 2/22/21.
//

import WidgetKit
import SwiftUI

struct WeatherEntryView: View {
    
    let entry: WeatherEntry
    
    private let baseColor = Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1))
    private let darkColor = Color(#colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1))
    
    @Environment(\.widgetFamily) var family
    var body: some View {
        switch family {
        case .systemSmall:
            ZStack {
                baseColor
                WeatherView(weather: entry.weatherInfo[0], updatedDate: entry.date)
            }.edgesIgnoringSafeArea(.all)
            
        case .systemMedium:
            ZStack {
                HStack(spacing: 0) {
                    Rectangle().fill(baseColor)
                    Rectangle().fill(darkColor)
                }
                HStack {
                    WeatherView(weather: entry.weatherInfo[0], updatedDate: entry.date)
                    WeatherView(weather: entry.weatherInfo[1], updatedDate: entry.date)
                        .foregroundColor(.white)
                }
            }.edgesIgnoringSafeArea(.all)
            
        case .systemLarge:
            VStack{
                ZStack{
                    HStack(spacing: 0) {
                        Rectangle().fill(baseColor)
                        Rectangle().fill(darkColor)
                    }
                    HStack {
                        WeatherView(weather: entry.weatherInfo[0], updatedDate: entry.date)
                        WeatherView(weather: entry.weatherInfo[1], updatedDate: entry.date)
                            .foregroundColor(.white)
                    }
                }
                VStack {
                    HStack {
                        VStack{
                            DailyWeatherView(weather: entry.weatherInfo[2])
                            DailyWeatherView(weather: entry.weatherInfo[3])
                        }
                        VStack{
                            DailyWeatherView(weather: entry.weatherInfo[4])
                            DailyWeatherView(weather: entry.weatherInfo[5])
                        }
                        VStack{
                            DailyWeatherView(weather: entry.weatherInfo[6])
                            DailyWeatherView(weather: entry.weatherInfo[7])
                        }
                        VStack{
                            DailyWeatherView(weather: entry.weatherInfo[8])
                            DailyWeatherView(weather: entry.weatherInfo[9])
                        }
                    }
                }
            }
        default:
            ZStack {
                baseColor
                WeatherView(weather: entry.weatherInfo[0], updatedDate: entry.date)
            }.edgesIgnoringSafeArea(.all)
        }
    }
    
    
}

struct WeatherEntryView_Previews: PreviewProvider {
    static var previews: some View {
        WeatherEntryView(entry: WeatherEntry(date: Date(), weatherInfo: [Weather(name: "night", temperature: 70, unit: "F", description: "Cloudy"),Weather(name: "Seatte", temperature: 70, unit: "F", description: "Light Rain"),Weather(name: "night", temperature: 70, unit: "F", description: "Cloudy"),Weather(name: "Seatte", temperature: 70, unit: "F", description: "Cloudy"),Weather(name: "night", temperature: 70, unit: "F", description: "Sunny All Day"),Weather(name: "Seatte", temperature: 70, unit: "F", description: "Cloudy"),Weather(name: "night", temperature: 70, unit: "F", description: "Cloudy"),Weather(name: "Seatte", temperature: 70, unit: "F", description: "Cloudy"),Weather(name: "night", temperature: 70, unit: "F", description: "Cloudy"),Weather(name: "Seatte", temperature: 70, unit: "F", description: "Cloudy")]))
            .previewContext(WidgetPreviewContext(family: .systemLarge))
    }
}
