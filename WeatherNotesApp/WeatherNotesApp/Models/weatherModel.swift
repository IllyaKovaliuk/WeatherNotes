//
//  weatherModel.swift
//  WeatherNotesApp
//
//  Created by Illya Kovaliuk on 16.11.2025.
//

import Foundation

struct weatherModel: Codable {
    var temperature : Double
    var condition: String
    var icon: String
    var city: String
}


var weatherTest = [
    weatherModel(temperature: 20.0, condition: "default", icon: "circle.fill", city: "Kyiv"),
    weatherModel(temperature: 22.0, condition: "normal", icon: "cloud", city: "Zhytomyr"),
    weatherModel(temperature: 10.0, condition: "cloud", icon: "sun.fill", city: "Berdychiv"),
    weatherModel(temperature: 17.0, condition: "default", icon: "circle.fill", city: "Vinnytsa")

]

