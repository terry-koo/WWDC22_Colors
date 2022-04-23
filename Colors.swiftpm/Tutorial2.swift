//
//  File.swift
//  Colors
//
//  Created by Terry Koo on 2022/04/23.
//


import SwiftUI


struct Tutorial2: View {

    
    var body: some View {
        ZStack{
            Rectangle()
                .opacity(0.85)
                .edgesIgnoringSafeArea(.all)
            HStack{
                
                VStack{
                    Text(" \"Hey, there!\" ")
                        .foregroundColor(Color("message-font"))
                        .background(
                            RoundedRectangle(cornerRadius: 10)
                                .fill(Color("message-box")
                            )
                        )
                        .font(.largeTitle)
                    
                }
                Image("staff2")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
            }
        }
    }
    
}
