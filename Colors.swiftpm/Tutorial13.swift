import SwiftUI


struct Tutorial13: View {
    
    
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
                                .frame(width: 250 , height: 110)
                                .offset(x: 250, y: 225)
                        }
                        .compositingGroup()
                    VStack{
                        Text(" \"If you want to change the color you’ve selected, tap the bucket again and select the other color\" ")
                            .foregroundColor(Color("message-font"))
                            .background(
                                RoundedRectangle(cornerRadius: 10)
                                    .fill(Color("message-box")
                                )
                            )
                            .font(.largeTitle)
                            .padding()
                        Text(" \"You can reselect anytime before you tap the SELL button\" ")
                            .foregroundColor(Color("message-font"))
                            .background(
                                RoundedRectangle(cornerRadius: 10)
                                    .fill(Color("message-box")
                                )
                            )
                            .font(.largeTitle)
                    }
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
                                .frame(width: 330 , height: 170)
                                .offset(x: 290, y: 200)
                        }
                        .compositingGroup()
                    VStack{
                        Text(" \"If you want to change the color you’ve selected, tap the bucket again and select the other color\" ")
                            .foregroundColor(Color("message-font"))
                            .background(
                                RoundedRectangle(cornerRadius: 10)
                                    .fill(Color("message-box")
                                )
                            )
                            .font(.largeTitle)
                            .padding()
                        Text(" \"You can reselect anytime before you tap the SELL button\" ")
                            .foregroundColor(Color("message-font"))
                            .background(
                                RoundedRectangle(cornerRadius: 10)
                                    .fill(Color("message-box")
                                )
                            )
                            .font(.largeTitle)
                    }
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
                                .frame(width: 470 , height: 200)
                                .offset(x: 320, y: 280)
                        }
                        .compositingGroup()
                    VStack{
                        Text(" \"If you want to change the color you’ve selected, tap the bucket again and select the other color\" ")
                            .foregroundColor(Color("message-font"))
                            .background(
                                RoundedRectangle(cornerRadius: 10)
                                    .fill(Color("message-box")
                                )
                            )
                            .font(.largeTitle)
                            .padding()
                        Text(" \"You can reselect anytime before you tap the SELL button\" ")
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
}


struct Tutorial14_Preview: PreviewProvider {
    static var previews: some View {
        Tutorial14()
            .previewInterfaceOrientation(.landscapeRight)
    }
}
