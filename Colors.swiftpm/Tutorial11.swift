import SwiftUI


struct Tutorial11: View {

    var body: some View {
        

        ZStack{
                ZStack{
                    Rectangle()
                        .opacity(0.85)
                        .edgesIgnoringSafeArea(.all)


                    RoundedRectangle(cornerRadius: 10)
                        .blendMode(.destinationOut)
                        .frame(width: 360, height: 90)
                        .offset(x: 330, y: 427)
                }
                .compositingGroup()
            
           
                Text(" \"Finally, press the mix button and the two colors you choose combine to make paint.\" ")
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
