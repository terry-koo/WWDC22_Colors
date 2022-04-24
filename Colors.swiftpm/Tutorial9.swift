import SwiftUI


struct Tutorial9: View {
    
    
    var body: some View {
        GeometryReader { geometry in
            // 9.7inch
            if geometry.size.height < 769 {
                ZStack{
                    ZStack{
                        Rectangle()
                            .fill(.black)
                            .opacity(0.85)
                            .edgesIgnoringSafeArea(.all)

                        RoundedRectangle(cornerRadius: 10)
                            .blendMode(.destinationOut)
                            .frame(width: 130, height: 120)
                            .offset(x: 180, y: 220)
                    }
                    .compositingGroup()

                    Text(" \"First, tap on one of the empty buckets\" ")
                        .foregroundColor(Color("message-font"))
                        .background(
                            RoundedRectangle(cornerRadius: 10)
                                .fill(Color("message-box")
                                     )
                        )
                        .font(.largeTitle)
                        .offset(x: -210, y: 200)
                }
                
            // 11inch
            } else if geometry.size.height < 835 {
                ZStack{
                    ZStack{
                        Rectangle()
                            .fill(.black)
                            .opacity(0.85)
                            .edgesIgnoringSafeArea(.all)

                        RoundedRectangle(cornerRadius: 10)
                            .blendMode(.destinationOut)
                            .frame(width: 170, height: 160)
                            .offset(x: 200, y: 200)
                    }
                    .compositingGroup()

                    Text(" \"First, tap on one of the empty buckets\" ")
                        .foregroundColor(Color("message-font"))
                        .background(
                            RoundedRectangle(cornerRadius: 10)
                                .fill(Color("message-box")
                                     )
                        )
                        .font(.largeTitle)
                        .offset(x: -240, y: 200)
                }
            
            // 12.9inch
            } else {
                ZStack{
                    ZStack{
                        Rectangle()
                            .fill(.black)
                            .opacity(0.85)
                            .edgesIgnoringSafeArea(.all)
 
                        RoundedRectangle(cornerRadius: 10)
                            .blendMode(.destinationOut)
                            .frame(width: 220, height: 200)
                            .offset(x: 210, y: 280)
                    }
                    .compositingGroup()

                    Text(" \"First, tap on one of the empty buckets\" ")
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
    }
}


struct Tutorial9_Preview: PreviewProvider {
    static var previews: some View {
        Tutorial9()
            .previewInterfaceOrientation(.landscapeRight)
    }
}
