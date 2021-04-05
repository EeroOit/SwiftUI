//
//  WeatherService.swift
//  WeatherApp
//
//  Created by big sur on 5.4.2021.
//

import Foundation

struct ApiWeather: Decodable {
    let description: String
    let iconName: String
    
    enum CodingKeys: String, CodingKeys{
        
    }
}
