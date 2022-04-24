//
//  File.swift
//  Colors
//
//  Created by Terry Koo on 2022/04/20.
//
import SwiftUI


struct ContentView: View {
    @StateObject var myData = MyData()
    @State var tutorial: Int = 0
    @State var tutorialFin: Bool = false
    
    var body: some View {
        ZStack{
            Group{
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
            
//            if !tutorialFin {
//                Rectangle()
//                    .opacity(0.5)
//                    .edgesIgnoringSafeArea(.all)
//            }
            
            if tutorial == 0 {
                Tutorial0()
                    .edgesIgnoringSafeArea(.all)
                    .onTapGesture {
                        tutorial += 1
                    }
            } else if tutorial == 1{
                Tutorial1()
                    .edgesIgnoringSafeArea(.all)
                    .onTapGesture {
                        tutorial += 1
                    }
            } else if tutorial == 2{
                Tutorial2()
                    .edgesIgnoringSafeArea(.all)
                    .onTapGesture {
                        tutorial += 1
                    }
            } else if tutorial == 3{
                Tutorial3()
                    .edgesIgnoringSafeArea(.all)
                    .onTapGesture {
                        tutorial += 1
                    }
            } else if tutorial == 4{
                Tutorial4()
                    .edgesIgnoringSafeArea(.all)
                    .onTapGesture {
                        tutorial += 1
                    }
            } else if tutorial == 5{
                Tutorial5()
                    .edgesIgnoringSafeArea(.all)
                    .onTapGesture {
                        tutorial += 1
                    }
            } else if tutorial == 6{
                Tutorial6()
                    .edgesIgnoringSafeArea(.all)
                    .onTapGesture {
                        tutorial += 1
                    }
            } else if tutorial == 7{
                Tutorial7()
                    .edgesIgnoringSafeArea(.all)
                    .onTapGesture {
                        tutorial += 1
                    }
            } else if tutorial == 8{
                Tutorial8()
                    .edgesIgnoringSafeArea(.all)
                    .onTapGesture {
                        tutorial += 1
                    }
            } else if tutorial == 9{
                Tutorial9()
                    .edgesIgnoringSafeArea(.all)
                    .onTapGesture {
                        tutorial += 1
                    }
            } else if tutorial == 10{
                Tutorial10()
                    .edgesIgnoringSafeArea(.all)
                    .onTapGesture {
                        tutorial += 1
                    }
            } else if tutorial == 11{
                Tutorial11()
                    .edgesIgnoringSafeArea(.all)
                    .onTapGesture {
                        tutorial += 1
                    }
            } else if tutorial == 12{
                Tutorial12()
                    .edgesIgnoringSafeArea(.all)
                    .onTapGesture {
                        tutorial += 1
                        myData.value = 0
                    }
            } else if tutorial == 13{
                Tutorial13()
                    .edgesIgnoringSafeArea(.all)
                    .onTapGesture {
                        tutorial += 1
                        myData.value = 0
                    }
            } else if tutorial == 14{
                Tutorial14()
                    .edgesIgnoringSafeArea(.all)
                    .onTapGesture {
                        tutorial += 1
                        myData.value = 0
                    }
            } else if tutorial == 15{
                Tutorial15()
                    .edgesIgnoringSafeArea(.all)
                    .onTapGesture {
                        tutorial += 1
                        myData.value = 0
                    }
            } else if tutorial == 16{
                Tutorial16()
                    .edgesIgnoringSafeArea(.all)
                    .onTapGesture {
                        tutorial += 1
                        myData.value = 0
                    }
            }
            
        }
        
    }
}
