import SwiftUI


struct Tutorial8: View {


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
                            .frame(width: 400, height: 690)
                            .offset(x: 250, y: 20)
                    }
                    .compositingGroup()
                    
                    
                    Text(" \"You can make paint on the right\" \n \"Let's make yellow-green paint for her\" ")
                        .foregroundColor(Color("message-font"))
                        .background(
                            RoundedRectangle(cornerRadius: 10)
                                .fill(Color("message-box")
                                     )
                        )
                    
                        .font(.largeTitle)
                        .offset(x: -220, y: 0)
                    
                    
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
                            .frame(width: 500, height: 750)
                            .offset(x: 285, y: 0)
                    }
                    .compositingGroup()
                    
                    
                    Text(" \"You can make paint on the right\" \n \"Let's make yellow-green paint for her\" ")
                        .foregroundColor(Color("message-font"))
                        .background(
                            RoundedRectangle(cornerRadius: 10)
                                .fill(Color("message-box")
                                     )
                        )
                    
                        .font(.largeTitle)
                        .offset(x: -300, y: 0)
                    
                    
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
                            .frame(width: 600, height: 900)
                            .offset(x: 330, y: 20)
                    }
                    .compositingGroup()
                    
                    
                    Text(" \"You can make paint on the right\" \n \"Let's make yellow-green paint for her\" ")
                        .foregroundColor(Color("message-font"))
                        .background(
                            RoundedRectangle(cornerRadius: 10)
                                .fill(Color("message-box")
                                     )
                        )
                    
                        .font(.largeTitle)
                        .offset(x: -300, y: 0)
                    
                    
                }
            }
        }

                
        
        
    }
    
}


struct Tutorial8_Preview: PreviewProvider {
    static var previews: some View {
        Tutorial8()
            .previewInterfaceOrientation(.landscapeRight)
         
    }
}
