import SwiftUI


struct Tutorial12: View {

    var body: some View {
        

        ZStack{
            GeometryReader { geometry in
                
                // 9.7inch
                if geometry.size.height < 769 {
                    ZStack{
                        Rectangle()
                            .fill(.black)
                            .opacity(0.85)
                            .edgesIgnoringSafeArea(.all)
                        
                        
                        
                        RoundedRectangle(cornerRadius: 10)
                            .blendMode(.destinationOut)
                            .frame(width: 130, height: 120)
                            .offset(x: 310, y: 220)
                    }
                    .compositingGroup()
                    
                    
                    Text(" \"Third, tap on the remaining empty bucket. \n And choose the color in the hexagon like what you just did.\" ")
                        .foregroundColor(Color("message-font"))
                        .background(
                            RoundedRectangle(cornerRadius: 10)
                                .fill(Color("message-box")
                                     )
                        )
                        .font(.largeTitle)
                        .offset(x: 100, y: 450)
                    
                // 11inch
                } else if geometry.size.height < 835 {
                    ZStack{
                        Rectangle()
                            .fill(.black)
                            .opacity(0.85)
                            .edgesIgnoringSafeArea(.all)
                        
                        
                        RoundedRectangle(cornerRadius: 10)
                            .blendMode(.destinationOut)
                            .frame(width: 170, height: 160)
                            .offset(x: 380, y: 200)
                    }
                    .compositingGroup()
                    
                    
                    Text(" \"Third, tap on the remaining empty bucket. \n And choose the color in the hexagon like what you just did.\" ")
                        .foregroundColor(Color("message-font"))
                        .background(
                            RoundedRectangle(cornerRadius: 10)
                                .fill(Color("message-box")
                                     )
                        )
                        .font(.largeTitle)
                        .offset(x: 210, y: 450)
            
                
                // 12.9inch
                } else {
                    
                    ZStack{
                        Rectangle()
                            .fill(.black)
                            .opacity(0.85)
                            .edgesIgnoringSafeArea(.all)
                        
                        
                        RoundedRectangle(cornerRadius: 10)
                            .blendMode(.destinationOut)
                            .frame(width: 220, height: 200)
                            .offset(x: 450, y: 280)
                    }
                    .compositingGroup()
                    
                    
                    Text(" \"Third, tap on the remaining empty bucket. \n And choose the color in the hexagon like what you just did.\" ")
                        .foregroundColor(Color("message-font"))
                        .background(
                            RoundedRectangle(cornerRadius: 10)
                                .fill(Color("message-box")
                                     )
                        )
                        .font(.largeTitle)
                        .offset(x: 200, y: 600)
                }
            }
  
        }
    }
    
}
