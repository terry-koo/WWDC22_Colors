import SwiftUI


struct Tutorial14: View {

    var body: some View {
        
        GeometryReader { geometry in
            
            // 9.7inch
            if geometry.size.height < 769 {
                ZStack{
                        ZStack{
                            Rectangle()
                                .fill(.black)
                                .opacity(0.85)
                                .edgesIgnoringSafeArea(.all)


                            RoundedRectangle(cornerRadius: 10)
                                .blendMode(.destinationOut)
                                .frame(width: 280 , height: 60)
                                .offset(x: 250, y: 325)
                        }
                        .compositingGroup()
                        Text(" \"Finally, if you press the SELL button, ")
                            .foregroundColor(Color("message-font"))
                            .background(
                                RoundedRectangle(cornerRadius: 10)
                                    .fill(Color("message-box")
                                )
                            )
                            .font(.largeTitle)
                            .offset(x: 0, y: 130)
                   
                        Text(" the two colors you choose will be combined into one paint and sold to customers\" ")
                            .foregroundColor(Color("message-font"))
                            .background(
                                RoundedRectangle(cornerRadius: 10)
                                    .fill(Color("message-box")
                                )
                            )
                            .font(.largeTitle)
                            .offset(x: 0, y: 200)
                    }
                
            // 11inch
            } else if geometry.size.height < 835 {
                ZStack{
                        ZStack{
                            Rectangle()
                                .fill(.black)
                                .opacity(0.85)
                                .edgesIgnoringSafeArea(.all)


                            RoundedRectangle(cornerRadius: 10)
                                .blendMode(.destinationOut)
                                .frame(width: 320 , height: 100)
                                .offset(x: 290, y: 330)
                        }
                        .compositingGroup()
                        Text(" \"Finally, if you press the SELL button, ")
                            .foregroundColor(Color("message-font"))
                            .background(
                                RoundedRectangle(cornerRadius: 10)
                                    .fill(Color("message-box")
                                )
                            )
                            .font(.largeTitle)
                            .offset(x: 0, y: 200)
                   
                        Text(" the two colors you choose will be combined into one paint and sold to customers\" ")
                            .foregroundColor(Color("message-font"))
                            .background(
                                RoundedRectangle(cornerRadius: 10)
                                    .fill(Color("message-box")
                                )
                            )
                            .font(.largeTitle)
                            .offset(x: 0, y: 250)
                    }
            
            // 12.9inch
            } else {
                ZStack{
                        ZStack{
                            Rectangle()
                                .fill(.black)
                                .opacity(0.85)
                                .edgesIgnoringSafeArea(.all)


                            RoundedRectangle(cornerRadius: 10)
                                .blendMode(.destinationOut)
                                .frame(width: 360, height: 90)
                                .offset(x: 330, y: 427)
                        }
                        .compositingGroup()
                        Text(" \"Finally, if you press the SELL button, ")
                            .foregroundColor(Color("message-font"))
                            .background(
                                RoundedRectangle(cornerRadius: 10)
                                    .fill(Color("message-box")
                                )
                            )
                            .font(.largeTitle)
                            .offset(x: 0, y: 290)
                   
                        Text(" the two colors you choose will be combined into one paint and sold to customers\" ")
                            .foregroundColor(Color("message-font"))
                            .background(
                                RoundedRectangle(cornerRadius: 10)
                                    .fill(Color("message-box")
                                )
                            )
                            .font(.largeTitle)
                            .offset(x: 0, y: 340)
               
                    
                }
            }
        }
        

        
    }
    
}
