//
//  WeatherService.swift
//  WeatherApp
//
//  Created by big sur on 5.4.2021.
//
import CoreLocation
import Foundation

public final class WeatherService: NSObject {
    
private let LocationManager = CLLocationManager()
    
}

struct APIResponse: Decodable {
    let name: String
    let main: APIMain
    let weather: [APIWeather]
}

struct APIMain: Decodable {
    let temp: Double
}

struct APIWeather: Decodable {
    let description: String
    let iconName: String
    
    enum CodingKeys: String, CodingKey {
        case description
        case iconName = "main"
        
    }
}

