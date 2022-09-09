//
//  TriggerTime.swift
//  SwiftExamplesEb4
//
//  Created by VB on 10.09.2022.
//

import Foundation
import SwiftUI


struct TriggerView : View {
    let timer = Timer.publish(every: 1, on: .main, in: .common)
    var body: some View {
        VStack{
            Text("sa")
                .onReceive(timer){ clock in
                    print("Timer is on \(clock)")
                }
        }
    }
}
struct Previews : PreviewProvider {
    static var previews: some View{
        TriggerView()
    }
}
