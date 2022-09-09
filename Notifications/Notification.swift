//
//  Notification.swift
//  SwiftExamplesEb4
//
//  Created by VB on 10.09.2022.
//

import Foundation
import SwiftUI

struct PermissionView: View{
    var body: some View{
        VStack{
            Button {
                UNUserNotificationCenter.current().requestAuthorization(options: [.alert]) { succes, error in
                    if succes{
                        print("it work")
                    } else if let error = error{
                        print(error.localizedDescription)
                    }
                }
            } label: {
                Text("sa")
            }

        }
    }
}
