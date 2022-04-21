//
//  File.swift
//  Colors
//
//  Created by Terry Koo on 2022/04/20.
//
import SwiftUI


struct ContentView: View {
    @StateObject var myData = MyData()
    //playSound(sound: "background", type: "mp3")
    
    var body: some View {
        HStack(){
            Spacer()
            DrawView().environmentObject(myData)
            Spacer(minLength: 15)
            PaintView().environmentObject(myData)
            Spacer()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .onAppear(perform: {
            Sounds.play(sound: "background", type: "mp3")
            print("play sound")
        })
    }
}
