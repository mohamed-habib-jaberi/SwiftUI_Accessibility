//
//  AlarmOverviewView.swift
//  SwiftUI_Accessibility
//
//  Created by mohamed  habib on 31/05/2020.
//  Copyright © 2020 mohamed  habib. All rights reserved.
//

import SwiftUI

struct AlarmOverviewView: View {
    
    @State private var alarmList: [Alarm] = []
    @State private var showNewAlarm = false
    
    var body: some View {
        NavigationView{
            VStack{
                AlarmResetView(alarmList: $alarmList)
                
                AlarmList(alarmList: $alarmList)
                
                .navigationBarTitle("CatNap Alarms")
                .navigationBarItems(trailing:
                    Button(action: {
                        self.showNewAlarm.toggle()
                        let newAlarm = Alarm(name: "New Alarm", startTime: Date(), endTime: Date())
                         self.alarmList.append(newAlarm)
                    }, label: {
                           Image(systemName: "plus.circle")
                    })
                ).sheet(isPresented: $showNewAlarm) {
                    AlarmView(alarm: self.alarmList.last!)
                }
                
            }
        }
    }
}

struct AlarmOverviewView_Previews: PreviewProvider {
    static var previews: some View {
        AlarmOverviewView()
    }
}
