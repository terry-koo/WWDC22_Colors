import SwiftUI

struct Tutorial12: View {

    var body: some View {
        ZStack{
            Rectangle()
                .opacity(0.85)
                .edgesIgnoringSafeArea(.all)
            HStack{
                
                VStack{
                    Text(" \"Don't forget that you have to make the paint the customer wants.\" ")
                        .foregroundColor(Color("message-font"))
                        .background(
                            RoundedRectangle(cornerRadius: 10)
                                .fill(Color("message-box")
                            )
                        )
                        .font(.largeTitle)
                    
                    
                    Text(" \"Good Luck!!\" ")
                        .foregroundColor(Color("message-font"))
                        .background(
                            RoundedRectangle(cornerRadius: 10)
                                .fill(Color("message-box")
                            )
                        )
                        .font(.largeTitle)
                        .padding()
                    
                    
        
                }
                Image("staff2")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
            }
        }
    }
    
}
