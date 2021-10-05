//
//  WeatherListView.swift
//  ListsViewProject
//
//  Created by Mounir SISSANI on 14/09/2021.
//

import SwiftUI

struct WeatherListView: View {
    var weatherList = [
        Weather(iconWeather: "sun.min.fill", nameWeather: "sunny"),
        Weather(iconWeather: "cloud.drizzle.fill", nameWeather: "drizzle"),
        Weather(iconWeather: "cloud.bolt.rain.fill", nameWeather: "bolt Rain"),
        Weather(iconWeather: "tornado", nameWeather: "tornado")
    ]
    
    var body: some View {
        VStack(alignment: .leading){
            Text("weather")
                .font(.largeTitle)
                .bold()
                .padding()

            
            List(weatherList) { weather in
                WeatherRow(weather: weather)
            }
        }
    }
}

struct Weather: Identifiable {
    var id = UUID()
    var iconWeather: String
    var nameWeather: String
}

struct WeatherRow: View {
    var weather: Weather
    
    var body: some View {
        
        HStack {
            Image(systemName: weather.iconWeather)
            Text(weather.nameWeather)

        }
    }
}

struct WeatherListView_Previews: PreviewProvider {
    static var previews: some View {
        WeatherListView()
    }
}
