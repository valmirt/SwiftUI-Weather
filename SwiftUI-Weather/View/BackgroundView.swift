//
//  BackgroundView.swift
//  SwiftUI-Weather
//
//  Created by Valmir Junior on 15/04/21.
//

import SwiftUI

struct BackgroundView: View {
    @Binding var isNight: Bool
    
    var body: some View {
        LinearGradient(
            gradient: Gradient(colors: isNight ? [.black, .gray] : [.blue, Color("lightBlue")]),
            startPoint: .topLeading,
            endPoint: .bottomTrailing
        )
    }
}

struct BackgroundView_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundView(isNight: .constant(false))
            .ignoresSafeArea()
    }
}
