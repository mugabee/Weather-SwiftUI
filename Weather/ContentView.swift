//
//  ContentView.swift
//  Weather
//
//  Created by MUGABE RICHARD on 13/07/2021.
//

import SwiftUI


struct ContentView: View {
    @State private var isNight = false
    
    var body: some View {
        ZStack {
            BackgroundView(isNight: $isNight)
            VStack{
                CityName(CNAME: "Kigali, RW")
                MainWeatherStatusView(statusimage: isNight ? "moon.fill" : "cloud.sun.fill",
                                      statustemperature: isNight ? 20 : 30)
                HStack(spacing: 20){
                    WeatherDayView(dayOfWeek: "TUE",
                                   imageName: "cloud.sun.fill",
                                   temperature: 23)
                    WeatherDayView(dayOfWeek: "TUE",
                                   imageName: "cloud.sun.fill",
                                   temperature: 23)
                    WeatherDayView(dayOfWeek: "TUE",
                                   imageName: "cloud.sun.fill",
                                   temperature: 23)
                    WeatherDayView(dayOfWeek: "TUE",
                                   imageName: "cloud.sun.fill",
                                   temperature: 23)
                    WeatherDayView(dayOfWeek: "TUE",
                                   imageName: "cloud.sun.fill",
                                   temperature: 23)
                
                    
                }
                Spacer()
                
                Button {
                    isNight.toggle()
                    
                } label: {
                    WeatherButton(title: "Change Day Time", textColor: .blue, BackgroundColor: .white)
                    
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
                        .font(.system(size: 16,
                                      weight: .medium,
                                      design: .default))
                        .foregroundColor(.white)
                    Image(systemName: imageName)
                        .renderingMode(.original)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 40, height: 40)
                    Text("\(temperature)°")
                        .font(.system(size: 28,
                                      weight: .medium,
                                      design: .default))
                        .foregroundColor(.white)
               
           
            
        }
    }
}


struct BackgroundView: View {
    
    @Binding var isNight: Bool
    
    var body: some View {
        
        
        
        LinearGradient(gradient: Gradient(colors: [isNight ? .black : .blue, isNight ? .gray : Color("lightBlue")]),
                       startPoint: .topLeading,
                       endPoint: .bottomTrailing)
            .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
    }
}

struct CityName: View {
    var CNAME: String
    var body: some View {
        Text(CNAME)
            .font(.system(size: 32, weight: .medium, design: .default ))
            .foregroundColor(.white)
            .padding()
    }
}

struct MainWeatherStatusView: View {
    
    var statusimage: String
    var statustemperature: Int
    
    
    var body: some View {
        VStack(spacing: 10) {
            Image(systemName: statusimage)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 180,height: 180)
            
            Text("\(statustemperature)°")
                .font(.system(size: 70, weight: .medium))
                .foregroundColor(.white)
        }
        .padding(.bottom, 40)
    }
}

