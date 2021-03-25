//
//  Weather.swift
//  Find The Weather (iOS)
//
//  Created by Jeremy Christian Stowers on 3/24/21.
//

import Foundation

// what is the difference between a struct and a class?

struct Weather: Codable, Identifiable {
    var dt: Int
    var temp: Double
    var feel_like: Double
    var pressure: Int
    var humidity: Int
    var dew_point: Double
    var clouds: Int
    var wind_speed: Double
    var wind_deg: Int
    var weather: [WeatherDetail] // this is an array b/c the WeatherDetail API response returns as an array
    
    enum CodingKey: String {
        case currentDate="dt" // could change the variable names this way, but for the rest just using the given names
        case temp
        case feel_like
        case pressure
        case humidity
        case dew_point
        case clouds
        case wind_speed
        case wind_deg
        case weather
    }
    
    init() { // creates an empty case/object(?)(why?)
        dt = 0
        temp = 0.0
        feel_like = 0.0
        pressure = 0
        humidity = 0
        dew_point = 0.0
        clouds = 0
        wind_speed = 0.0
        wind_deg = 0
        weather = []
    }
}


extension Weather {
    var id: UUID {
        return UUID()
    }
}

// this subclass is for the option of showing sunrise and sunset data
// if this breaks things, comment out, change Weather back to struct, and set current var back to Weather in WeatherResponse.
//class WeatherSubClass: Weather {
//    var sunset: Int
//    var sunrise: Int
//}
