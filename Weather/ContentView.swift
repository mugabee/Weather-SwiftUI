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
                Text("Cupertino, CA")
                    .font(.system(size: 32, weight: .medium, design: .default))
                    .foregroundColor(.white)
                    .padding()
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
