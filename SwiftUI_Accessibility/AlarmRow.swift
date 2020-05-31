//
//  AlarmRow.swift
//  SwiftUI_Accessibility
//
//  Created by mohamed  habib on 23/05/2020.
//  Copyright © 2020 mohamed  habib. All rights reserved.
//

import SwiftUI

struct AlarmRow: View {
    
    @ObservedObject var alarm: Alarm
    
    var body: some View {
        HStack {
            
            Image(decorative: "Clock")
                .resizable()
                .frame(width: 40, height: 40)
                .opacity(alarm.isActive ? 1 : 0.2)
            
            VStack(alignment: .leading) {
                Text(alarm.name)
                    .lineLimit(nil)
                
                Text("\(alarm.startTime.formatted) - \(alarm.endTime.formatted)")
                    .fontWeight(.bold)
                    .font(Font.system(.body))
                    .minimumScaleFactor(0.5)
                .lineLimit(nil)
                    .accessibility(value: Text("start: \(alarm.startTime), end: \(alarm.endTime)"))
            }
            .opacity(alarm.isActive ? 1 : 0.2)
            
            Toggle(isOn: $alarm.isActive) {
                Text("Enable Alarm")
            }
        }
    }
}

struct AlarmRow_Previews: PreviewProvider {

    static var alarm = Alarm(name: "Test", startTime: Date(timeIntervalSinceNow: -200), endTime: Date())

    static var previews: some View {

        AlarmRow(alarm: alarm)
    }
}
