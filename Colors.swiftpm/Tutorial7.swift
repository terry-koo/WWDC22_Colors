import SwiftUI


struct Tutorial7: View {
    
    
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
                            .frame(width: 210, height: 210)
                            .offset(x: -147, y: -87)
                    }
                    .compositingGroup()
    
                    Text(" \"The circle shows the color that the customer wants.\" \n \"She wants yellow-green paint!\" ")
                        .foregroundColor(Color("message-font"))
                        .background(
                            RoundedRectangle(cornerRadius: 10)
                                .fill(Color("message-box")
                                     )
                        )
                        .font(.largeTitle)
                        .offset(x: 0, y: -280)
                }

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
                            .frame(width: 240, height: 240)
                            .offset(x: -190, y: -95)
                    }
                    .compositingGroup()
  
                    Text(" \"The circle shows the color that the customer wants.\" \n \"She wants yellow-green paint!\" ")
                        .foregroundColor(Color("message-font"))
                        .background(
                            RoundedRectangle(cornerRadius: 10)
                                .fill(Color("message-box")
                                     )
                        )
                        .font(.largeTitle)
                        .offset(x: 0, y: -280)
                }
            
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
                            .frame(width: 350, height: 350)
                            .offset(x: -235, y: -135)
                    }
                    .compositingGroup()
                    
                    
                    Text(" \"The circle shows the color that the customer wants.\" \n \"She wants yellow-green paint!\" ")
                        .foregroundColor(Color("message-font"))
                        .background(
                            RoundedRectangle(cornerRadius: 10)
                                .fill(Color("message-box")
                                     )
                        )
                        .font(.largeTitle)
                        .offset(x: 0, y: -370)
                }
            }
        }
    }
}


struct Tutorial7_Preview: PreviewProvider {
    static var previews: some View {
        Tutorial7()
            .previewInterfaceOrientation(.landscapeRight)
    }
}
