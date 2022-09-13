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
    let dayToAdd = 1
    let currentDate = Date()
    var body: some View{
        VStack{
            Button {
                let content = UNMutableNotificationContent()
                content.title = "Alllertt"
                content.subtitle = "calisiomm"
                var dateCompanenet = DateComponents()
                dateCompanenet.day = dayToAdd
                let trigger =  UNCalendarNotificationTrigger(dateMatching: dateCompanenet, repeats: true)
                let request = UNNotificationRequest(identifier: UUID().uuidString, content: content, trigger: trigger)
                UNUserNotificationCenter.current().add(request)
                let futureData = Calendar.current.date(byAdding: dateCompanenet, to:currentDate )
                print(futureData!)

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
