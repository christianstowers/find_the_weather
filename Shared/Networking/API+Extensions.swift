//
//  API+Extensions.swift
//  Find The Weather (iOS)
//
//  Created by Jeremy Christian Stowers on 3/15/21.
//

import Foundation

extension API {
    static let baseUrlString = "https://api.openweathermap.org/data/2.5/"
    
    static func getUrlFor(lat: Double, lon: Double) -> String {
        return"\(baseUrlString)oncall?lat=\(lat)&lon=\(lon)&exclude=minutely&appid=\(key)&units=imperial"
    }
}
