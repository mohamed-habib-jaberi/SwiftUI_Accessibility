//
//  AlarmList.swift
//  SwiftUI_Accessibility
//
//  Created by mohamed  habib on 23/05/2020.
//  Copyright © 2020 mohamed  habib. All rights reserved.
//

import SwiftUI

struct AlarmList: View {
    
    @Binding  var alarmList : [Alarm]
    
    var body: some View {
        
        NavigationView{
            
            List{
                
                Section(header: Text("Alarm")) {
                    ForEach(alarmList) { alarm in
                        
                        NavigationLink(destination: AlarmView(alarm: alarm)) {
                            AlarmRow(alarm: alarm)
                        }
                    .accessibility(value: Text("Edit Alarm"))
                    }
                }
            }
        }
        
    }
}

struct AlarmList_Previews: PreviewProvider {
    
    static var alarmList: [Alarm] = [Alarm(name: "Test", startTime: Date(timeIntervalSinceNow: -200), endTime: Date())]
    
    static var previews: some View {
        
        AlarmList(alarmList: .constant(alarmList))
    }
}
