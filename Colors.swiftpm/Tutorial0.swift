//
//  File.swift
//  Colors
//
//  Created by Terry Koo on 2022/04/23.
//
import SwiftUI


struct Tutorial0: View {

    
    var body: some View {
        ZStack{
            Rectangle()
                .opacity(0.85)
                .edgesIgnoringSafeArea(.all)
            HStack{
                Image("customer9")
                VStack{
                    Text(" \"I need paint to paint my house. ")
                        .foregroundColor(Color("message-font"))
                        .background(
                            RoundedRectangle(cornerRadius: 10)
                                .fill(Color("message-box")
                            )
                        )
                        .font(.largeTitle)
                    
                    Text(" Your shop is the most popular paint shop in my town!! ")
                        .foregroundColor(Color("message-font"))
                        .background(
                            RoundedRectangle(cornerRadius: 10)
                                .fill(Color("message-box")
                            )
                        )
                        .font(.largeTitle)
                    
                    Text(" Please give me a beautiful color of paint.\" ")
                        .foregroundColor(Color("message-font"))
                        .background(
                            RoundedRectangle(cornerRadius: 10)
                                .fill(Color("message-box")
                            )
                        )
                        .font(.largeTitle)
                    
                }
            }
        }
    }
    
}
