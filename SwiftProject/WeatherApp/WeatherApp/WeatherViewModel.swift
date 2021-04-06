//
//  WeatherViewModel.swift
//  WeatherApp
//
//  Created by big sur on 6.4.2021.
//

import Foundation
private let defaultIcon = "?"
private let iconMap = [
    "Drizzle" : "🌦",
    "Thunderstrorm" : "⛈",
    "Rain" : "🌧",
    "Snow" : "❄️",
    "Clear" : "☀️",
    "Clouds" : "☁️"

    
    




]
public class WeatherViewModel: ObservableObject {
    @Published var cityName: String = "City Name"
    @Published var temperature: String = "--"
    @Published var weatherDescription: String = "--"
    @Published var weatherIcon: String = defaultIcon
    
    public let weatherService: WeatherService
    
    public init(weatherService: WeatherService)
}

