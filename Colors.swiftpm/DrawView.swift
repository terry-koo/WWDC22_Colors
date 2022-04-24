//
//  File.swift
//  Colors
//
//  Created by Terry Koo on 2022/04/19.
//

import SwiftUI

struct DrawView: View {
    @State private var canTouchDown = true
    @EnvironmentObject var myData: MyData


    var body: some View {
        
        GeometryReader{ geometry in
           
            
            ZStack{
                
                RoundedRectangle(cornerRadius: 20)
                    .stroke(Color("card-foreground"), lineWidth: 4)
                    .shadow(color: .gray, radius: 3, x: 3, y: 3)
                    .frame(minWidth: 0, maxWidth: .infinity)

                RoundedRectangle(cornerRadius: 20)
                    .fill(Color("card"))
                
                VStack{
                    ZStack{
                        HStack{
                            Button(action: {
                                myData.showInformation.toggle()
                                print("Information touch")
                            }, label: {
                                Image(systemName: "questionmark.circle")
                                    .font(.title)
                                    .foregroundColor(.gray)
                                    .padding()
                                }
                            )
                            .sheet(isPresented: $myData.showInformation) {
                                InformationView()
                            }
                            Spacer()
                        }
                        HStack{
                            Image(systemName: "timer")
                                .font(.title)
                            Text(timeString(time: myData.value))
                                .font(.title)
                        }
                    }
                    HStack{
                        if myData.count == 0 {
                            
                            Text("Seven To Go")
                                .font(.title)
                                .fontWeight(.bold)
                        } else if myData.count == 1 {
                            Text("Six To Go")
                                .font(.title)
                                .fontWeight(.bold)
                        } else if myData.count == 2 {
                            Text("Five To Go")
                                .font(.title)
                                .fontWeight(.bold)
                        } else if myData.count == 3 {
                            Text("Four To Go")
                                .font(.title)
                                .fontWeight(.bold)
                        } else if myData.count == 4 {
                            Text("Three To Go")
                                .font(.title)
                                .fontWeight(.bold)
                        } else if myData.count == 5 {
                            Text("Two To Go")
                                .font(.title)
                                .fontWeight(.bold)
                        } else if myData.count == 6 {
                            Text("One To Go")
                                .font(.title)
                                .fontWeight(.bold)
                        }
                    }
                    
                    Spacer()
                    
                    ZStack {
                        
                        if geometry.size.height < 749.0 {
                            Circle()
                                .fill(Color(myData.targetColor))
                                .frame(width: geometry.size.width * 0.4, height: geometry.size.width * 0.6)
                                .offset(x: 100 , y: -160)
                            if myData.resultColor == "empty" {
                                Image("bucket-\(myData.resultColor)")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .padding()
                                    .offset(x: -85, y: -27)
                                    .shadow(color: .gray, radius: 1, x: 1, y: -1)
                            } else {
                                Image("bucket-\(myData.resultColor)")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .padding()
                                    .offset(x: -5, y: 20)
                                    .shadow(color: .gray, radius: 1, x: 1, y: -1)
                                }
                        } else if geometry.size.height < 800 {
                            Circle()
                                .fill(Color(myData.targetColor))
                                .frame(width: geometry.size.width * 0.4, height: geometry.size.width * 0.6)
                                .offset(x: 100 , y: -160)
                            if myData.resultColor == "empty" {
                                Image("bucket-\(myData.resultColor)")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .padding()
                                    .offset(x: -85, y: -27)
                                    .shadow(color: .gray, radius: 1, x: 1, y: -1)
                            } else {
                                Image("bucket-\(myData.resultColor)")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .padding()
                                    .offset(x: 10, y: 25)
                                    .shadow(color: .gray, radius: 1, x: 1, y: -1)
                                }
                        } else {
                            Circle()
                                .fill(Color(myData.targetColor))
                                .frame(width: geometry.size.width * 0.5, height: geometry.size.width * 0.5)
                                .offset(x: 100 , y: -200)
                            if myData.resultColor == "empty" {
                                Image("bucket-\(myData.resultColor)")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .padding()
                                    .offset(x: -85, y: -27)
                                    .shadow(color: .gray, radius: 1, x: 1, y: -1)
                            } else {
                                Image("bucket-\(myData.resultColor)")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .padding()
                                    .offset(x: 0, y: 50)
                                    .frame(width: 600, height: 650, alignment: .leading)
                                    .shadow(color: .gray, radius: 1, x: 1, y: -1)
                                }
                        }
                        
                    }
                    .padding(.top)
                

                    Spacer()
                    

                }
            } // ZStack
            .padding([.top, .leading, .bottom])
        }
    }
}



func timeString(time: Int) -> String {
//       let hours   = Int(time) / 3600
       let minutes = Int(time) / 60 % 60
       let seconds = Int(time) % 60
       return String(format:"%02i:%02i", minutes, seconds)
   }



struct DrawView_Preview: PreviewProvider {
    static var previews: some View {
        DrawView()
            .previewInterfaceOrientation(.portrait)
    }
}
