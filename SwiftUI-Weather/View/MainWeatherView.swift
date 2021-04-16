//
//  MainWeatherView.swift
//  SwiftUI-Weather
//
//  Created by Valmir Junior on 15/04/21.
//

import SwiftUI

struct MainWeatherView: View {
    var imageName: String
    var temperature: Int
    
    var body: some View {
        VStack(spacing: 8) {
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 180, height: 180)
            
            Text("\(temperature)°")
                .font(.system(size: 70, weight: .medium))
                .foregroundColor(.white)
        }
    }
}

struct MainWeatherView_Previews: PreviewProvider {
    static var previews: some View {
        MainWeatherView(imageName: "cloud.moon.fill", temperature: 56)
            .previewLayout(.sizeThatFits)
            .background(Color.blue)
    }
}
