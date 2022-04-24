import SwiftUI


struct Tutorial4: View {

    
    var body: some View {
        ZStack{
            Rectangle()
                .fill(.black)
                .opacity(0.85)
                .edgesIgnoringSafeArea(.all)
            HStack{
                
                VStack{
                    
                    Text(" \"Yes, you!\" ")
                        .foregroundColor(Color("message-font"))
                        .background(
                            RoundedRectangle(cornerRadius: 10)
                                .fill(Color("message-box")
                            )
                        )
                        .font(.largeTitle)
                    
                }
                VStack{
                    Image("staff1")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                    
                    Text(" manager ")
                        .foregroundColor(.black)
                        .background(
                            RoundedRectangle(cornerRadius: 10)
                                .fill(Color(.white)
                            )
                        )
                        .font(.largeTitle)
                        .offset(y: -5)
                }
            }
        }
    }
    
}


struct Tutorial4_Preview: PreviewProvider {
    static var previews: some View {
        Tutorial4()
            .previewInterfaceOrientation(.landscapeRight)
         
    }
}
