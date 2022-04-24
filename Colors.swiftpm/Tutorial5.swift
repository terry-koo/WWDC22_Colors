import SwiftUI


struct Tutorial5: View {

    
    var body: some View {
        ZStack{
            Rectangle()
                .fill(.black)
                .opacity(0.85)
                .edgesIgnoringSafeArea(.all)
            HStack{
                
                VStack{
                    
                    Text(" \"We have a customer, \n so let's get to work right away\" ")
                        .foregroundColor(Color("message-font"))
                        .background(
                            RoundedRectangle(cornerRadius: 10)
                                .fill(Color("message-box")
                            )
                        )
                        .font(.largeTitle)
                        .padding()
                    
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


struct Tutorial5_Preview: PreviewProvider {
    static var previews: some View {
        Tutorial5()
            .previewInterfaceOrientation(.landscapeRight)
         
    }
}
