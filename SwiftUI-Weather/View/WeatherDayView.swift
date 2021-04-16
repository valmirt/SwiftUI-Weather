//
//  WeatherDayView.swift
//  SwiftUI-Weather
//
//  Created by Valmir Junior on 15/04/21.
//

import SwiftUI

struct WeatherDayView: View {
    var futureDays: [Weather] = [
        Weather(dayOfWeek: "TUE", imageName: "cloud.sun.rain.fill", temperature: "74°"),
        Weather(dayOfWeek: "WED", imageName: "moon.stars.fill", temperature: "70°"),
        Weather(dayOfWeek: "THU", imageName: "wind", temperature: "66°"),
        Weather(dayOfWeek: "FRI", imageName: "sunset.fill", temperature: "70°"),
        Weather(dayOfWeek: "SAT", imageName: "cloud.sun.fill", temperature: "55°")
    ]
    
    var body: some View {
        HStack {
            ForEach(futureDays) { day in
                VStack {
                    Text(day.dayOfWeek)
                        .foregroundColor(.white)
                        .font(.system(size: 18, weight: .medium))
                    
                    Image(systemName: day.imageName)
                        .renderingMode(.original)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 40, height: 40)
                    
                    Text(day.temperature)
                        .foregroundColor(.white)
                        .font(.system(size: 38, weight: .medium))
                }
            }
        }
    }
}

struct WeatherFutureDays_Previews: PreviewProvider {
    static var previews: some View {
        WeatherDayView()
            .background(Color.gray)
            .previewLayout(.sizeThatFits)
    }
}
