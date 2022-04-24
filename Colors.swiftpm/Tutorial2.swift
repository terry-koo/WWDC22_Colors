import SwiftUI


struct Tutorial2: View {

    
    var body: some View {
        ZStack{
            Rectangle()
                .fill(.black)
                .opacity(0.85)
                .edgesIgnoringSafeArea(.all)
            HStack{
                VStack{
                    Text(" \"Sure, please wait a moment\" ")
                        .foregroundColor(Color("message-font"))
                        .background(
                            RoundedRectangle(cornerRadius: 10)
                                .fill(Color("message-box")
                            )
                        )
                        .font(.largeTitle)

                }
                VStack{
                    Image("staff2")
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
                        .offset(y: -70)
                }
            }
        }
    }
}


struct Tutorial2_Preview: PreviewProvider {
    static var previews: some View {
        Tutorial2()
            .previewInterfaceOrientation(.landscapeRight)
    }
}
