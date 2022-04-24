import SwiftUI


struct Tutorial16: View {
    
    
    var body: some View {
        ZStack{
            Rectangle()
                .fill(.black)
                .opacity(0.85)
                .edgesIgnoringSafeArea(.all)
            HStack{
                VStack{
                    Image("customer7")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                    Text(" YOU ")
                        .foregroundColor(.black)
                        .background(
                            RoundedRectangle(cornerRadius: 10)
                                .fill(Color(.white)
                            )
                        )
                        .font(.largeTitle)
                        .offset( y: -10)
                }
                VStack{
                    Text(" \"Let's do this!\" ")
                        .foregroundColor(Color("message-font"))
                        .background(
                            RoundedRectangle(cornerRadius: 10)
                                .fill(Color("message-box")
                            )
                        )
                        .font(.largeTitle)
                        .padding()
                }
            }
        }
    }
}


struct Tutorial16_Preview: PreviewProvider {
    static var previews: some View {
        Tutorial16()
            .previewInterfaceOrientation(.landscapeRight)
    }
}
