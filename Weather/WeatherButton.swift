//
//  WeatherButton.swift
//  Weather
//
//  Created by MUGABE RICHARD on 13/07/2021.
//

import SwiftUI

struct WeatherButton: View {
    var title: String
    var textColor: Color
    var BackgroundColor: Color
    
    
    var body: some View {
        Text(title)
            .frame(width: 280, height: 50)
            .background(BackgroundColor)
            .foregroundColor(textColor)
            .font(.system(size: 20, weight: .bold, design: .default))
            .cornerRadius(10)
    }
}
