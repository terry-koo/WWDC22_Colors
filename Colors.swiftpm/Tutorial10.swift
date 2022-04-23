import SwiftUI


struct Tutorial10: View {

    var body: some View {
        

        ZStack{
                ZStack{
                    Rectangle()
                        .opacity(0.85)
                        .edgesIgnoringSafeArea(.all)


                    RoundedRectangle(cornerRadius: 10)
                        .blendMode(.destinationOut)
                        .frame(width: 220, height: 200)
                        .offset(x: 450, y: 280)
                }
                .compositingGroup()
            
           
                Text(" \"Third, tap on the remaining empty bucket. \n And choose the color in the circle like what you just did.\" ")
                    .foregroundColor(Color("message-font"))
                    .background(
                        RoundedRectangle(cornerRadius: 10)
                            .fill(Color("message-box")
                        )
                    )
                    
                    .font(.largeTitle)
                    .offset(x: -180, y: 300)
       
            
        }
    }
    
}
