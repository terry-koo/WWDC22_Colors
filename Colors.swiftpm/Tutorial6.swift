import SwiftUI


struct Tutorial6: View {


    
    var body: some View {
        

        ZStack{
                ZStack{
                    Rectangle()
                        .opacity(0.85)
                        .edgesIgnoringSafeArea(.all)


                    RoundedRectangle(cornerRadius: 10)
                        .blendMode(.destinationOut)
                        .frame(width: 600, height: 600)
                        .offset(x: -350, y: -20)
                }
                .compositingGroup()
            
           
                Text(" \"The circle behind the paint bin \n is the color of the paint that customer want.\" ")
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
