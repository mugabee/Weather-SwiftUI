//
//  ContentView.swift
//  Weather
//
//  Created by MUGABE RICHARD on 12/07/2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        // HERE IN z STACK WE ARE GOING TO BUILD A BACKGROUND
        ZStack {
            //LinearGradient is the fastest way to define mixed color
            LinearGradient(gradient: Gradient(colors: [.blue, .white]),
                           startPoint: .topLeading,
                           endPoint: .bottomLeading)
            .edgesIgnoringSafeArea(.all)
      //the safearea is there to fill the color around the adge parts of our phone
            VStack {
                Text("KIGALI, RW")
                    .font(.system(size: 32, weight: .medium, design: .default))
                    .foregroundColor(.white)
                    .padding()
                VStack(spacing: 10) {
                    Image(systemName: "cloud.sun.fill")
                        .renderingMode(.original)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 180, height: 180 )
                    Text("23°")
                        .font(.system(size: 70, weight: .medium ))
                        .foregroundColor(.white)
                    
                }
                Spacer()
                HStack(spacing: 20) {
                    WeatherDayView(dayOfWeek: "TUE",
                                   imageName: "sunset.fill",
                                   temperature: 21)
                    WeatherDayView(dayOfWeek: "WED",
                                   imageName: "sun.max.fill",
                                   temperature: 25)
                    WeatherDayView(dayOfWeek: "THU",
                                   imageName: "cloud.rain.fill",
                                   temperature: 23)
                    WeatherDayView(dayOfWeek: "FRI",
                                   imageName: "cloud.sun.rain.fill",
                                   temperature: 24)
                    WeatherDayView(dayOfWeek: "SAT",
                                   imageName: "cloud.sun.fill",
                                   temperature: 22)
                }
                Spacer()
                   
            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct WeatherDayView: View {
    var dayOfWeek: String
    var imageName: String
    var temperature: Int
    var body: some View {
        VStack {
            Text(dayOfWeek)
                .font(.system(size: 16, weight: .medium, design: .default))
                .foregroundColor(.white)
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 40, height: 40 )
            Text("\(temperature)°")
                .font(.system(size: 28, weight: .medium ))
                .foregroundColor(.white)
            
        }
    }
}
