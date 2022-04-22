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
                    .stroke(Color(hue: 1.0, saturation: 0.0, brightness: 0.955), lineWidth: 4)
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
                        Text("Left Customer : \(myData.count) / 10")
                            .font(.title)
                            .fontWeight(.bold)
                    }
                    Spacer()
                    // customer message
                    HStack{
                        Text(myData.randomMessage)
                            .font(.system(size: 25))
                            .foregroundColor(Color("message-font"))
                            .background(
                                RoundedRectangle(cornerRadius: 10)
                                    .fill(Color("message-box")
                                )
                            )
                            .multilineTextAlignment(.leading)
                            .padding(.leading)
                            .offset(y: 19)
                        Spacer()
                    }
                    HStack{
                        VStack{
                            Image(myData.randomCustomer)
                                .resizable()
                                .frame(height: geometry.size.height * 0.7)
                                .padding(.leading)
                        }
                        VStack{
                            Image("bucket")
                                .resizable()
                                .frame(height: geometry.size.height * 0.3)
                        }
                    }
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
