//
//  NotificationView.swift
//  SwiftExamplesEb4
//
//  Created by VB on 10.09.2022.
//

import Foundation
import SwiftUI

struct NotificiationView: View{
    var items = [60, 80 , 120]
    @State private var isSelected = 60
    var body: some View{
        VStack{
            Picker("",selection: $isSelected){
                ForEach(items , id:\.self){item in
                    Text("\(isSelected)")
                }
            }
            Button {
                let content = UNMutableNotificationContent()
                content.title = "Alllertt"
                content.subtitle = "calisiomm"
                var date = DateComponents()
                date.hour = 2
                date.minute = 10
                let trigger = UNTimeIntervalNotificationTrigger(timeInterval:TimeInterval(isSelected), repeats: true)
                let request = UNNotificationRequest(identifier: UUID().uuidString, content: content, trigger: trigger)
                UNUserNotificationCenter.current().add(request)
            } label: {
                Text("hello worlddd")
            
            }
        }
    }
}
/*
 var dateCompanent = DateComponents()
 dateCompanent.hour = 1
 dateCompanent.minute = 57
 let trigger = UNCalendarNotificationTrigger(dateMatching: dateCompanent, repeats: false)*/
