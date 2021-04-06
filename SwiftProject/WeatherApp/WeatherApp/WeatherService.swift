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
    private let API_KEY = "1adfcdb6b64b59edcd01d5fae37b8f86"
    private var completionHandler: ((Weather) -> Void)?
    
    public func loadWeatherData (_ completionHandler: @escaping((Weather) -> Void)) {
        self.completionHandler = completionHandler
        LocationManager.requestWhenInUseAuthorization()
        LocationManager.startUpdatingLocation()
    }
    //api.openweathermap.org/data/2.5/weather?lat={lat}&lon={lon}&appid={API key}
    private func makeDataRequest(forCoordinates coordinates: CLLocationCoordinate2D) {
        guard let urlString = "api.openweathermap.org/data/2.5/weather?lat=\(coordinates.latitude)&lon=\(coordinates.longitude)&appid=\(API_KEY)&units=metric"
                .addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed) else { return }
        
        guard let url = URL(string: urlString) else { return }
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            guard error == nil, let data = data else { return }
            
        }
    }
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

