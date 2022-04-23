import SwiftUI


struct Tutorial9: View {

    var body: some View {
        ZStack{
                ZStack{
                    Rectangle()
                        .opacity(0.85)
                        .edgesIgnoringSafeArea(.all)


                    Circle()
                        .blendMode(.destinationOut)
                        .frame(width: 400, height: 400)
                        .offset(x: 330, y: -160)
                }
                .compositingGroup()
            
           
                Text(" \"Second, choose the color that's in the color in the circle.\" ")
                    .foregroundColor(Color("message-font"))
                    .background(
                        RoundedRectangle(cornerRadius: 10)
                            .fill(Color("message-box")
                        )
                    )
                    .font(.largeTitle)
                    .offset(x: 0, y: 75)
        }
    }
    
}
