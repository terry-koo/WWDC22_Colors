import SwiftUI


struct Tutorial8: View {

    var body: some View {
        

        ZStack{
                ZStack{
                    Rectangle()
                        .opacity(0.85)
                        .edgesIgnoringSafeArea(.all)


                    RoundedRectangle(cornerRadius: 10)
                        .blendMode(.destinationOut)
                        .frame(width: 220, height: 200)
                        .offset(x: 210, y: 280)
                }
                .compositingGroup()
            
           
                Text(" \"First, tap on one of the empty buckets.\" ")
                    .foregroundColor(Color("message-font"))
                    .background(
                        RoundedRectangle(cornerRadius: 10)
                            .fill(Color("message-box")
                        )
                    )
                    
                    .font(.largeTitle)
                    .offset(x: -240, y: 300)
       
            
        }
    }
    
}
