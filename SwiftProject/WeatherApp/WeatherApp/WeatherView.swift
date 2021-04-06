//
//  ContentView.swift
//  Weather
//

import SwiftUI

struct WeatherView: View {

  @ObservedObject var viewModel: WeatherViewModel

  var body: some View {
    VStack {
        
      Text(viewModel.cityName)
        .font(.largeTitle)
        .padding()
        .background(Color.white)
        .cornerRadius(20.0)
      Text(viewModel.temperature)
        .font(.system(size: 70))
        .bold()
        .background(Color.white)
        .cornerRadius(20.0)
      Text(viewModel.weatherIcon)
        .font(.largeTitle)
        .padding()
        .background(Color.white)
        .cornerRadius(20.0)
      Text(viewModel.weatherDescription)
        .background(Color.white)
        .cornerRadius(20.0)

        }
    
    
    
    
    .alert(isPresented: $viewModel.shouldShowLocationError) {
      Alert(
        title: Text("Error"),
        message: Text("To see the weather, provide location access in Settings."),
        dismissButton: .default(Text("Open Settings")) {
          guard let settingsURL = URL(string: UIApplication.openSettingsURLString) else { return }
          UIApplication.shared.open(settingsURL)
        }
      )
    }
    .onAppear(perform: viewModel.refresh)
    .background(
    Image ("sky-4772434_1280")
        .scaledToFill()
        .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
        )
  }
}


struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    WeatherView(viewModel: WeatherViewModel(weatherService: WeatherService()))
  }
}
