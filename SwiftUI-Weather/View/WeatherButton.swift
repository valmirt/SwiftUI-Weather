//
//  WeatherButton.swift
//  SwiftUI-Weather
//
//  Created by Valmir Junior on 15/04/21.
//

import SwiftUI

struct WeatherButton: View {
    var title: String
    var titleColor: Color
    var background: Color
    var action: (() -> Void)?
    
    var body: some View {
        Button {
            action?()
        } label: {
            Text("Change Day Time")
                .font(.system(size: 20, weight: .semibold))
                .foregroundColor(titleColor)
                .frame(width: 280, height: 50)
                .background(background)
                .cornerRadius(8)
        }
    }
}

struct WeatherButton_Previews: PreviewProvider {
    static var previews: some View {
        WeatherButton(
            title: "Change Day Time",
            titleColor: .blue,
            background: .white
        )
        .previewLayout(.sizeThatFits)
    }
}
