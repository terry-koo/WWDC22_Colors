import SwiftUI


struct Tutorial6: View {

    
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
                            .frame(width: 460, height: 460)
                            .offset(x: -270, y: 30)
                    }
                    .compositingGroup()
                    
                    
                    Text(" \"First, if you look to the left, can you see the empty paint bin and the circle behind it?\" ")
                        .foregroundColor(Color("message-font"))
                        .background(
                            RoundedRectangle(cornerRadius: 10)
                                .fill(Color("message-box")
                                     )
                        )
                        .font(.largeTitle)
                        .offset(x: 0, y: -300)
                   
                    
                } //ZStack
                
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
                            .frame(width: 500, height: 500)
                            .offset(x: -310, y: 10)
                    }
                    .compositingGroup()
                    
                    
                    Text(" \"First, if you look to the left, can you see the empty paint bin and the circle behind it?\" ")
                        .foregroundColor(Color("message-font"))
                        .background(
                            RoundedRectangle(cornerRadius: 10)
                                .fill(Color("message-box")
                                     )
                        )
                        .font(.largeTitle)
                        .offset(x: 0, y: -350)
                   
                    
                } //ZStack
            
            
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
                            .frame(width: 600, height: 600)
                            .offset(x: -350, y: -20)
                    }
                    .compositingGroup()
                    
                    
                    Text(" \"First, if you look to the left, can you see the empty paint bin and the circle behind it?\" ")
                        .foregroundColor(Color("message-font"))
                        .background(
                            RoundedRectangle(cornerRadius: 10)
                                .fill(Color("message-box")
                                     )
                        )
                        .font(.largeTitle)
                        .offset(x: 0, y: -350)
                  
                    
                    
                } //ZStack
                
            } // else
        } // geometry
                
        
        
    }
    
}


struct Tutorial6_Preview: PreviewProvider {
    static var previews: some View {
        Tutorial6()
            .previewInterfaceOrientation(.landscapeRight)
         
    }
}
