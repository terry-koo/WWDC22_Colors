import SwiftUI


struct Tutorial7: View {


    var body: some View {
        

        ZStack{
                ZStack{
                    Rectangle()
                        .opacity(0.85)
                        .edgesIgnoringSafeArea(.all)


                    RoundedRectangle(cornerRadius: 10)
                        .blendMode(.destinationOut)
                        .frame(width: 600, height: 900)
                        .offset(x: 330, y: 20)
                }
                .compositingGroup()
            
           
                Text(" \"You can make paint on the right.\" ")
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
