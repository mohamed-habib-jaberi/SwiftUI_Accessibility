//
//  Alarm.swift
//  SwiftUI_Accessibility
//
//  Created by mohamed  habib on 22/05/2020.
//  Copyright © 2020 mohamed  habib. All rights reserved.
//

import SwiftUI
import Combine

class Alarm: ObservableObject, Identifiable {
    var id = UUID()
    
    @Published var name: String
    @Published var startTime: Date
    @Published var endTime: Date
    @Published var isActive: Bool
    
    init(name: String, startTime: Date, endTime: Date,isActive: Bool = true) {
        self.name = name
        self.startTime = startTime
        self.endTime = endTime
        self.isActive = isActive
    }
    
}
