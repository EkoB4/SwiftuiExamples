//
//  TriggerTime.swift
//  SwiftExamplesEb4
//
//  Created by VB on 10.09.2022.
//

import Foundation
import SwiftUI


struct TriggerTime : View{
    let timer = Timer.publish(every: 1,on: .main, in: .common )
    var body: some View{
        VStack{
            Text("sa")
                .onReceive(timer) { Time  in
                    print("\(Time)")
                }
        }
    }
}


