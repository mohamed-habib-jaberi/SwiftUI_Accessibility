//
//  AlarmResetView.swift
//  SwiftUI_Accessibility
//
//  Created by mohamed  habib on 22/05/2020.
//  Copyright © 2020 mohamed  habib. All rights reserved.
//

import SwiftUI

struct AlarmResetView: View {
    
   @Binding var alarmList: [Alarm]
    
    var body: some View {
        VStack {
            Image("Clock")
                .resizable()
                .frame(width: 200, height: 200)
                .gesture(LongPressGesture().onEnded({ (value) in
                    self.disableAlarme()
                }))
            
            Text("Disable Alarme")
                .font(Font.system(.headline, design: .rounded))
                .minimumScaleFactor(0.85)
                .foregroundColor(Color.red)
            
            
        }
    }
    
    private func disableAlarme(){
        alarmList.forEach { $0.isActive = false}
    }
}

struct AlarmResetView_Previews: PreviewProvider {
    static var previews: some View {
    
        AlarmResetView(alarmList: .constant([Alarm(name: "Test", startTime: Date(timeIntervalSinceNow: -200), endTime: Date())]))
    }
}
