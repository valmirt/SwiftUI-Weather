//
//  Weather.swift
//  SwiftUI-Weather
//
//  Created by Valmir Junior on 15/04/21.
//

import Foundation

struct Weather: Identifiable {
    var dayOfWeek: String
    var imageName: String
    var temperature: String
    var id: String = UUID().uuidString
}
