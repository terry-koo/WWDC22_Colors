//
//  File.swift
//  Colors
//
//  Created by Terry Koo on 2022/04/23.
//
import SwiftUI


struct Tutorial1: View {

    
    var body: some View {
        ZStack{
            Rectangle()
                .fill(.black)
                .opacity(0.85)
                .edgesIgnoringSafeArea(.all)
            HStack{
                VStack{
                    Image("customer9")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                    Text(" customer ")
                        .foregroundColor(.black)
                        .background(
                            RoundedRectangle(cornerRadius: 10)
                                .fill(Color(.white)
                            )
                        )
                        .font(.largeTitle)
                }
                VStack{
                    Text(" \"Hello, I need to buy paint for my house\" ")
                        .foregroundColor(Color("message-font"))
                        .background(
                            RoundedRectangle(cornerRadius: 10)
                                .fill(Color("message-box")
                            )
                        )
                        .font(.largeTitle)
                        .padding()
                    
                    Text(" \"I heard this is the most popular paint shop in the town\" ")
                        .foregroundColor(Color("message-font"))
                        .background(
                            RoundedRectangle(cornerRadius: 10)
                                .fill(Color("message-box")
                            )
                        )
                        .font(.largeTitle)
                        .padding()
                    
                    Text(" \"Please make me a beautiful paint\" ")
                        .foregroundColor(Color("message-font"))
                        .background(
                            RoundedRectangle(cornerRadius: 10)
                                .fill(Color("message-box")
                            )
                        )
                        .font(.largeTitle)
                        .padding()
                    
                }
            }
        }
    }
    
}


struct Tutorial1_Preview: PreviewProvider {
    static var previews: some View {
        Tutorial1()
            .previewInterfaceOrientation(.landscapeRight)
         
    }
}
