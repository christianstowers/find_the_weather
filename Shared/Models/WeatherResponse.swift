//
//  WeatherResponse.swift
//  Find The Weather (iOS)
//
//  Created by Jeremy Christian Stowers on 3/24/21.
//

import Foundation

struct WeatherResponse: Codable {
    var current: Weather // change to WeatherSubClass if using the subclass
    var hourly: [Weather]
    var daily: [DailyWeather]
    
    static func empty() -> WeatherResponse {
        return WeatherResponse(current: Weather(), hourly: [Weather](repeating: Weather(), count: 23), daily: [DailyWeather](repeating: DailyWeather(), count: 8))
    }
    // day two: stopped at 54:13
    
}
