//
//  TimeTrigger.swift
//  SwiftExamplesEb4
//
//  Created by VB on 10.09.2022.
//

import Foundation
import SwiftUI


struct TimeTrigger: View{
    var body: some View{
        VStack{
            Button {
                let content = UNMutableNotificationContent()
                content.title = "Alllertt"
                content.subtitle = "calisiomm"
                let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 5, repeats: false)
                let request = UNNotificationRequest(identifier: UUID().uuidString, content: content, trigger: trigger)
                UNUserNotificationCenter.current().add(request)
            } label: {
                Text("hello worlddd")
            }

        }
    }

}

