//
//  AlarmView.swift
//  SwiftUI_Accessibility
//
//  Created by mohamed  habib on 23/05/2020.
//  Copyright © 2020 mohamed  habib. All rights reserved.
//

import SwiftUI

struct AlarmView: View {
    
    @ObservedObject var alarm: Alarm
    
    var body: some View {
        VStack {
            TextField("Alarme Name", text: $alarm.name)
                .padding()
                .foregroundColor(.white)
                .background(Color.myGreen)
                .cornerRadius(20)
            
            DatePicker(selection: $alarm.startTime, displayedComponents: .hourAndMinute) {
                Text("Start Date")
            }
            
            DatePicker(selection: $alarm.endTime, displayedComponents: .hourAndMinute) {
                Text("End Date")
            }
            
            Toggle(isOn: $alarm.isActive) {
                Text("Alarm is active")
            }
            
            
        }.padding()
    }
}

struct AlarmView_Previews: PreviewProvider {
    
      static var alarm = Alarm(name: "Test", startTime: Date(timeIntervalSinceNow: -200), endTime: Date())
    
    static var previews: some View {
        
        AlarmView(alarm: alarm  )
    }
}
