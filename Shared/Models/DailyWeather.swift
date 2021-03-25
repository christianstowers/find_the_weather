//
//  DailyWeather.swift
//  Find The Weather (iOS)
//
//  Created by Jeremy Christian Stowers on 3/24/21.
//

import Foundation

struct DailyWeather: Codable, Identifiable {
    var dt: Int
    var temp: Temperature
    var weather: [WeatherDetail]
    
    enum CodingKey: String {
        case dt
        case temp
        case weather
    }
    
    init() {
        dt = 0
        temp = Temperature(min: 0.0, max: 0.0)
        weather = [WeatherDetail(main: "", description: "", icon: "")] // why can't this initialize with an empty array like that in Weather?
    }
}

extension DailyWeather {
    var id: UUID {
        return UUID()
    }
}
