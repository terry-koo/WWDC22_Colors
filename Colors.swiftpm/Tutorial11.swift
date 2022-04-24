import SwiftUI


struct Tutorial11: View {

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


                            Circle()
                                .blendMode(.destinationOut)
                                .frame(width: 400, height: 400)
                                .offset(x: 247, y: -99)
                            
                            Circle()
                                .fill(.black)
                                .frame(width: 282, height: 282)
                                .offset(x: 247, y: -99)
                                .opacity(0.85)
                           
                        } // ZStack
                        Text(" \"Remember, the color in the outer circle is the guide. You cannot select any color from there\" ")
                            .foregroundColor(Color("message-font"))
                            .background(
                                RoundedRectangle(cornerRadius: 10)
                                    .fill(Color("message-box")
                                )
                            )
                            .font(.largeTitle)
                            .offset(x: 0, y: 165)
                               
                }
                .compositingGroup()
                
            // 11inch
            } else if geometry.size.height < 835 {
                ZStack{
                        ZStack{
                            Rectangle()
                                .fill(.black)
                                .opacity(0.85)
                                .edgesIgnoringSafeArea(.all)


                            Circle()
                                .blendMode(.destinationOut)
                                .frame(width: 465, height: 465)
                                .offset(x: 290, y: -136)
                            
                            Circle()
                                .fill(.black)
                                .frame(width: 335, height: 335)
                                .offset(x: 290, y: -136)
                                .opacity(0.85)
                           
                        } // ZStack
                        Text(" \"Remember, the color in the outer circle is the guide. You cannot select any color from there\" ")
                            .foregroundColor(Color("message-font"))
                            .background(
                                RoundedRectangle(cornerRadius: 10)
                                    .fill(Color("message-box")
                                )
                            )
                            .font(.largeTitle)
                            .offset(x: 0, y: 145)
                               
                }
                .compositingGroup()
            
            // 12.9inch
            } else {
                ZStack{
                        ZStack{
                            Rectangle()
                                .fill(.black)
                                .opacity(0.85)
                                .edgesIgnoringSafeArea(.all)


                            Circle()
                                .blendMode(.destinationOut)
                                .frame(width: 510, height: 510)
                                .offset(x: 333, y: -157)
                            
                            Circle()
                                .fill(.black)
                                .frame(width: 400, height: 400)
                                .offset(x: 333, y: -157)
                                .opacity(0.85)
                           
                        } // ZStack
                        Text(" \"Remember, the color in the outer circle is the guide. You cannot select any color from there\" ")
                            .foregroundColor(Color("message-font"))
                            .background(
                                RoundedRectangle(cornerRadius: 10)
                                    .fill(Color("message-box")
                                )
                            )
                            .font(.largeTitle)
                            .offset(x: 0, y: 145)
                               
                }
                .compositingGroup()
            }
        }
       
            
           
               
    
    
    }
    
}

struct Tutorial11_Preview: PreviewProvider {
    static var previews: some View {
        Tutorial11()
            .previewInterfaceOrientation(.landscapeRight)
         
    }
}
