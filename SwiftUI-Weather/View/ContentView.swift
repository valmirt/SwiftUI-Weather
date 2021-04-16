//
//  ContentView.swift
//  SwiftUI-Weather
//
//  Created by Valmir Junior on 15/04/21.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isNight = false
    
    var body: some View {
        ZStack {
            BackgroundView(isNight: $isNight)
                .ignoresSafeArea()
            VStack {
                Text("Cupertino, CA")
                    .font(.system(size: 32, weight: .medium))
                    .foregroundColor(.white)
                    .padding()
                
                MainWeatherView(
                    imageName: isNight ? "moon.stars.fill" : "cloud.sun.fill",
                    temperature: 76
                )
                .animation(.linear)
                
                WeatherDayView()
                    .padding(.top, 60)
                
                Spacer()
                
                WeatherButton(
                    title: "Change Day Time",
                    titleColor: .blue,
                    background: .white
                ) { isNight.toggle() }
                
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
