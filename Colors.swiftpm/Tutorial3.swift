import SwiftUI


struct Tutorial3: View {

    
    var body: some View {
        ZStack{
            Rectangle()
                .opacity(0.85)
                .edgesIgnoringSafeArea(.all)
            HStack{
                
                VStack{
                    
                    Text(" \"Yes, you who are playing this game!\" ")
                        .foregroundColor(Color("message-font"))
                        .background(
                            RoundedRectangle(cornerRadius: 10)
                                .fill(Color("message-box")
                            )
                        )
                        .font(.largeTitle)
                    
                }
                Image("staff1")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
            }
        }
    }
    
}
