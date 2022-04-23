import SwiftUI


struct Tutorial4: View {

    
    var body: some View {
        ZStack{
            Rectangle()
                .opacity(0.85)
                .edgesIgnoringSafeArea(.all)
            HStack{
                
                VStack{
                    
                    Text(" \"I need your help\" ")
                        .foregroundColor(Color("message-font"))
                        .background(
                            RoundedRectangle(cornerRadius: 10)
                                .fill(Color("message-box")
                            )
                        )
                        .font(.largeTitle)
                    
                    Text(" \"It's not hard. I'll explain everything for you\" ")
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
