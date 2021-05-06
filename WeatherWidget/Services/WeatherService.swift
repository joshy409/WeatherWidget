//
//  WeatherService.swift
//  WeatherWidgetExtension
//
//  Created by Joshua Yang on 2/22/21.
//

import SwiftUI

class WeatherService {
    let url = URL(string: "https://api.lil.software/weather?latitude=47.606209&longitude=-122.332069")!
    
    func getWeather(completion: @escaping (Result<[Weather], Error>) -> Void) {

            URLSession.shared.dataTask(with: url) { data, response, error in
            guard error == nil else {
                completion(.failure(error!))
                return
            }
            completion(.success(self.getWeatherResponse(fromData: data!)))
            }.resume()
    }
    
    
    private func getWeatherResponse(fromData data: Data) -> [Weather] {
        let weatherData = try? JSONDecoder().decode(WeatherResponse.self, from: data)
        if let weatherD = weatherData {
            return weatherD.forecast
        }
        return [Weather(name: "Error", temperature: 0, unit: "", description: "Error")]
    }
}
