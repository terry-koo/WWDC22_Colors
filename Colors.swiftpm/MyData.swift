//
//  File.swift
//  Colors
//
//  Created by Terry Koo on 2022/04/20.
//

import Foundation
import SwiftUI
import Combine
 
class MyData: ObservableObject {
    @Published var value: Int = 0
    @Published var number: Int = 0
    @Published var resultColor: String = "empty"
    @Published var targetColor: String = Array(Set(["blue-green", "blue-violet", "green", "orange", "red-orange", "red-violet", "violet", "yellow-green", "yellow-orange"]))[0]
    @Published var count: Int = 0
    @Published var randomCustomer = "customer" + String(Int.random(in: 3...13))
    @Published var right = 0
    @Published var wrong = 0
    @Published var randomMessage = " Give me the same color paint on the right! "
    @Published var showModal = false
    @Published var showInformation = false
    @Published var randomRich = Array(Set(["rich1","rich2","rich3","rich4","rich5"]))[0]
    @Published var showTips = false
    
    
    var message = [
        " Give me the same color paint on the right ",
        " I need the color paint on the right!! ",
        " Hurry up my friend!! ",
        " I need paint to paint my house ",
        " I love the paint in this store ",
        " People recommend your paint ",
        " It's the most popular paint shop in my town "
    ]

    
    init() {
        Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { timer in
            self.value += 1
            
        }
        
    }
    
    func getRandomCustomer() -> String{
        return "customer" + String(Int.random(in: 3...13))
    }
    
    func getRandomMessage() -> String {
        return message[Int.random(in: 0...6)]
    }
    
    func getRandomRichImage() -> String{
        return "rich" + String(Int.random(in: 1...5))
    }
    
    func getTime() -> String {
        return timeString(time: self.value)
    }

}
