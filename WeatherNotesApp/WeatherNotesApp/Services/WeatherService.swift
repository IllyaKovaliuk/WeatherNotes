//
//  WeatherService.swift
//  WeatherNotesApp
//
//  Created by Illya Kovaliuk on 16.11.2025.
//

import Foundation

class WeatherService {
    private let apiKey = "70aeb0d01e4ae13f145028539dd70344"  

    func fetchWeather(for city: String, completion: @escaping (weatherModel?) -> Void) {
        let urlString =
        "https://api.openweathermap.org/data/2.5/weather?q=\(city)&appid=\(apiKey)&units=metric"

        guard let url = URL(string: urlString) else {
            completion(nil)
            return
        }

        URLSession.shared.dataTask(with: url) { data, response, error in
            guard let data = data,
                  let response = try? JSONDecoder().decode(WeatherResponse.self, from: data) else {
                completion(nil)
                return
            }

            let weather = weatherModel(
                temperature: response.main.temp,
                condition: response.weather.first?.main ?? "",
                icon: response.weather.first?.icon ?? "",
                city: response.name
            )

            DispatchQueue.main.async {
                completion(weather)
            }

        }.resume()
    }
}

struct WeatherResponse: Codable {
    let main: Main
    let weather: [WeatherInfo]
    let name: String
}

struct Main: Codable {
    let temp: Double
}

struct WeatherInfo: Codable {
    let main: String
    let icon: String
}
