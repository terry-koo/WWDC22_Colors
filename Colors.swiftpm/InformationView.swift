import SwiftUI


struct InformationView: View {
    @EnvironmentObject var myData: MyData
    
    
    var body: some View {
        VStack{
            HStack{
                Spacer()
                Button(action: {
                    myData.showInformation = false
                }, label:{
                    Image(systemName: "xmark")
                        .font(.title)
                        .foregroundColor(.gray)
                        .padding()
                    }
                )
            }
            .padding()
            VStack(alignment: .leading){
                Text("Developer : Terry Koo")
                    .font(.title)
                    
                Text("Contact : xpflxhfl94@naver.com")
                    .font(.title)
            }

            ZStack{
                //circle
                GeometryReader{ geometry in
                    let radius: Double = geometry.size.width * 0.2
                    let centerPoint = CGPoint(x: geometry.size.width/2, y: geometry.size.height/2)
               
                    Arc(startAngle: .degrees(105), endAngle: .degrees(135), clockwise: false,
                        radius: radius, centerPoint: centerPoint)
                        .stroke(Color("blue-violet"), lineWidth: 50)

                    Arc(startAngle: .degrees(75), endAngle: .degrees(105), clockwise: false,
                        radius: radius, centerPoint: centerPoint)
                      .stroke(Color("violet"), lineWidth: 50)

                    Arc(startAngle: .degrees(45), endAngle: .degrees(75), clockwise: false,
                        radius: radius, centerPoint: centerPoint)
                      .stroke(Color("red-violet"), lineWidth: 50)

                    Arc(startAngle: .degrees(15), endAngle: .degrees(45), clockwise: false,
                        radius: radius, centerPoint: centerPoint)
                    .stroke(Color("red"), lineWidth: 50)

                    Arc(startAngle: .degrees(345), endAngle: .degrees(15), clockwise: false,
                        radius: radius, centerPoint: centerPoint)
                    .stroke(Color("red-orange"), lineWidth: 50)

                    Arc(startAngle: .degrees(315), endAngle: .degrees(345), clockwise: false,
                        radius: radius, centerPoint: centerPoint)
                      .stroke(Color("orange"), lineWidth: 50)
                }
 
                // circle
                GeometryReader{ geometry in
                    let radius: Double = geometry.size.width * 0.2
                    
                    let centerPoint = CGPoint(x: geometry.size.width/2, y: geometry.size.height/2)
                    
                    Arc(startAngle: .degrees(285), endAngle: .degrees(315), clockwise: false,
                        radius: radius, centerPoint: centerPoint)
                    .stroke(Color("yellow-orange"), lineWidth: 50)
                    
                    Arc(startAngle: .degrees(255), endAngle: .degrees(285), clockwise: false,
                        radius: radius, centerPoint: centerPoint)
                    .stroke(Color("yellow"), lineWidth: 50)
                    
                    Arc(startAngle: .degrees(225), endAngle: .degrees(255), clockwise: false,
                        radius: radius, centerPoint: centerPoint)
                    .stroke(Color("yellow-green"), lineWidth: 50)
                    
                    Arc(startAngle: .degrees(195), endAngle: .degrees(225), clockwise: false,
                        radius: radius, centerPoint: centerPoint)
                      .stroke(Color("green"), lineWidth: 50)

                    Arc(startAngle: .degrees(165), endAngle: .degrees(195), clockwise: false,
                        radius: radius, centerPoint: centerPoint)
                      .stroke(Color("blue-green"), lineWidth: 50)

                    Arc(startAngle: .degrees(135), endAngle: .degrees(165), clockwise: false,
                        radius: radius, centerPoint: centerPoint)
                    .stroke(Color("blue"), lineWidth: 50)

                }
            }
            Spacer()
            Text("Music: https://www.bensound.com")
                .foregroundColor(.gray)
                .font(.caption2)
                .padding()
        }
    }
}
