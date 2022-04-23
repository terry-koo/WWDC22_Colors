import SwiftUI
//import AlertToast

struct PaintView: View {
    @State private var canTouchDown = true
    @State private var firstColor = Color("temp")
    @State private var secondColor = Color("temp")
    @State private var resultColor = Color("temp")
    @State private var selectFirst = false
    @State private var selectSceond = false
    @EnvironmentObject var myData: MyData
    @State private var showToast = false
    

    


    var body: some View {
        GeometryReader{ paintGeometry in
    
            VStack{
                    ZStack{
                        RoundedRectangle(cornerRadius: 20)
                            .stroke(Color("card-foreground"), lineWidth: 4)
                            .shadow(color: .gray, radius: 3, x: 3, y: 3)
                            .frame(minWidth: 0, maxWidth: .infinity, maxHeight: .infinity)
     
                        RoundedRectangle(cornerRadius: 20)
                            .fill(Color("card"))
                        
                        //circle
                        GeometryReader{ geometry in
                            let radius: Double = geometry.size.width * 0.35
                            
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
//                        .onTapGesture {
//                            .toast(isPresenting: $showToast){
//                                
//                                // `.alert` is the default displayMode
//                                AlertToast(type: .regular, title: "Message Sent!")
//                                
//                                //Choose .hud to toast alert from the top of the screen
//                                //AlertToast(displayMode: .hud, type: .regular, title: "Message Sent!")
//                            }
//                        }

                        
                        // circle
                        GeometryReader{ geometry in
                            let radius: Double = geometry.size.width * 0.35
                            
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
                        
                        GeometryReader{ geometry in
                            let centerPoint = CGPoint(x: geometry.size.width/2, y: geometry.size.height/2)
                            let weight: Double = geometry.size.width * 0.15
      
                            // triangle yellow
                            Path { path in
                                path.move(to: centerPoint)
                                path.addLine(to: CGPoint(x: centerPoint.x + (3.0).squareRoot() / 2 * weight, y: centerPoint.y - 1 / 2 * weight))
                                path.addLine(to: CGPoint(x: centerPoint.x , y: centerPoint.y - 2 * weight))
                                path.addLine(to: CGPoint(x: centerPoint.x - (3.0).squareRoot() / 2 * weight, y: centerPoint.y - 1 / 2 * weight))
                                path.addLine(to: centerPoint)
                                path.closeSubpath()
                            }
                            .fill(Color("yellow"))
                            .onTapGesture {
                                Sounds2.play(sound: "paint", type: "mp3")
                                if selectFirst {
                                    firstColor = Color("yellow")
                                    selectFirst.toggle()
                                } else if selectSceond {
                                    secondColor = Color("yellow")
                                    selectSceond.toggle()
                                }
                                resultColor = mixColor(first: firstColor, second: secondColor)
                            }
                            
                            // triangle red
                            Path { path in
                                path.move(to: centerPoint)
                                path.addLine(to: CGPoint(x: centerPoint.x + (3.0).squareRoot() / 2 * weight, y: centerPoint.y - 1 / 2 * weight))
                                path.addLine(to: CGPoint(x: centerPoint.x + (3.0).squareRoot() * weight , y: centerPoint.y + 1 * weight))
                                path.addLine(to: CGPoint(x: centerPoint.x , y: centerPoint.y + 1  * weight))
                                path.addLine(to: centerPoint)
                                path.closeSubpath()
                            }
                            
                            .fill(Color("red"))
                            .onTapGesture {
                                Sounds2.play(sound: "paint", type: "mp3")
                                if selectFirst {
                                    firstColor = Color("red")
                                    selectFirst.toggle()
                                } else if selectSceond {
                                    secondColor = Color("red")
                                    selectSceond.toggle()
                                }
                                resultColor = mixColor(first: firstColor, second: secondColor)
                            }
                            
                            //triangle blue
                            Path { path in
                                path.move(to: centerPoint)
                                path.addLine(to: CGPoint(x: centerPoint.x - (3.0).squareRoot() / 2 * weight, y: centerPoint.y - 1 / 2 * weight))
                                path.addLine(to: CGPoint(x: centerPoint.x - (3.0).squareRoot() * weight , y: centerPoint.y + 1 * weight))
                                path.addLine(to: CGPoint(x: centerPoint.x , y: centerPoint.y + 1  * weight))
                                path.addLine(to: centerPoint)
                                path.closeSubpath()
                            }
                            .fill(Color("blue"))
                            .onTapGesture {
                                Sounds2.play(sound: "paint", type: "mp3")
                                if selectFirst {
                                    firstColor = Color("blue")
                                    selectFirst.toggle()
                                } else if selectSceond {
                                    secondColor = Color("blue")
                                    selectSceond.toggle()
                                }
                                resultColor = mixColor(first: firstColor, second: secondColor)
                            }
                            
                            // secondary color orange
                            Path { path in
                                path.move(to: CGPoint(x: centerPoint.x , y: centerPoint.y - 2 * weight))
                                path.addLine(to: CGPoint(x: centerPoint.x + (3.0).squareRoot() * weight , y: centerPoint.y + 1 * weight))
                                path.addLine(to: CGPoint(x: centerPoint.x + (3.0).squareRoot() * weight , y: centerPoint.y - 1 * weight))
                                path.addLine(to: CGPoint(x: centerPoint.x , y: centerPoint.y - 2 * weight))
                                path.closeSubpath()
                            }
                            //.stroke()
                            .fill(Color("orange"))
                            .onTapGesture {
                                Sounds2.play(sound: "paint", type: "mp3")
                                if selectFirst {
                                    firstColor = Color("orange")
                                    selectFirst.toggle()
                                } else if selectSceond {
                                    secondColor = Color("orange")
                                    selectSceond.toggle()
                                }
                                resultColor = mixColor(first: firstColor, second: secondColor)
                            }
                            
                            // secondary color green
                            Path { path in
                                path.move(to: CGPoint(x: centerPoint.x , y: centerPoint.y - 2 * weight))
                                path.addLine(to: CGPoint(x: centerPoint.x - (3.0).squareRoot() * weight , y: centerPoint.y + 1 * weight))
                                path.addLine(to: CGPoint(x: centerPoint.x - (3.0).squareRoot() * weight , y: centerPoint.y - 1 * weight))
                                
                                path.addLine(to: CGPoint(x: centerPoint.x , y: centerPoint.y - 2 * weight))
                                path.closeSubpath()
                            }
                            .fill(Color("green"))
                            .onTapGesture {
                                Sounds2.play(sound: "paint", type: "mp3")
                                if selectFirst {
                                    firstColor = Color("green")
                                    selectFirst.toggle()
                                } else if selectSceond {
                                    secondColor = Color("green")
                                    selectSceond.toggle()
                                }
                                resultColor = mixColor(first: firstColor, second: secondColor)
                            }
                            
                            // secondary coloe violet
                            Path { path in
                                path.move(to: CGPoint(x: centerPoint.x - (3.0).squareRoot() * weight , y: centerPoint.y + 1 * weight))
                                path.addLine(to: CGPoint(x: centerPoint.x + (3.0).squareRoot() * weight , y: centerPoint.y + 1 * weight))
                                path.addLine(to: CGPoint(x: centerPoint.x , y: centerPoint.y + 2 * weight))
                                path.addLine(to: CGPoint(x: centerPoint.x - (3.0).squareRoot() * weight , y: centerPoint.y + 1 * weight))
                                path.closeSubpath()
                            }
                            //.stroke()
                            .fill(Color("violet"))
                            .onTapGesture {
                                Sounds2.play(sound: "paint", type: "mp3")
                                if selectFirst {
                                    firstColor = Color("violet")
                                    selectFirst.toggle()
                                } else if selectSceond {
                                    secondColor = Color("violet")
                                    selectSceond.toggle()
                                }
                                resultColor = mixColor(first: firstColor, second: secondColor)
                            }
         
                           
                        } // GeometryReader
                       
                    } // ZStack

                
                // ipad pro 9.7inch and 11inch
                if paintGeometry.size.height < 800.0 {
                    // color combiner
                    ZStack{
                        RoundedRectangle(cornerRadius: 20)
                            .stroke(Color(hue: 1.0, saturation: 0.0, brightness: 0.955), lineWidth: 4)
                            .shadow(color: .gray, radius: 3, x: 3, y: 3)
                        
                        RoundedRectangle(cornerRadius: 20)
                            .fill(Color("card"))
                        
                        HStack{
                            // first color
                            if selectFirst {
                                Image("paint")
                                    .resizable()
                                    .renderingMode(.template)
                                    .foregroundColor(firstColor)
                                
                            } else {
                                ZStack{
                                    Image("paint")
                                        .resizable()
                                        .renderingMode(.template)
                                        .foregroundColor(firstColor)
                                        .onTapGesture {
                                            selectFirst.toggle()
                                            if selectSceond {
                                                selectSceond.toggle()
                                            }
                                        }
                                    Text("Choose")
                                        .foregroundColor(Color("font"))
                                }
                            }
                            
                            Image(systemName: "plus")
                            
                            // second color
                            if selectSceond {
                                Image("paint")
                                    .resizable()
                                    .renderingMode(.template)
                                    .foregroundColor(secondColor)
                            } else {
                                ZStack{
                                    Image("paint")
                                        .resizable()
                                        .renderingMode(.template)
                                        .foregroundColor(secondColor)
                                        .onTapGesture {
                                            selectSceond.toggle()
                                            if selectFirst {
                                                selectFirst.toggle()
                                            }
                                        }
                                    Text("Choose")
                                        .foregroundColor(Color("font"))
                                }
                                
                            }
                            
                            // MIX!!
                            Button(action: {
                                myData.resultColor = resultColor
                                print("MIX button click")
                                if myData.resultColor == myData.targetColor {
                                    if myData.count < 10 {
                                        Sounds2.play(sound: "correct", type: "mp3")
                                        myData.count += 1
                                    }
                                    // set random target color
                                    var randomColor = getRandomColor()
                                    if myData.targetColor != randomColor{
                                        myData.targetColor = randomColor
                                    } else {
                                        randomColor = getRandomColor()
                                        if randomColor == myData.targetColor {
                                            myData.targetColor = getRandomColor()
                                        } else {
                                            myData.targetColor = randomColor
                                        }
                                        
                                    }
                                } else {
                                    Sounds2.play(sound: "incorrect", type: "mp3")
                                }
                            }) {
                                HStack {
                                    Image(systemName: "sum")
                                    Text("MIX")
                                }.padding(10.0)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 10.0)
                                        .stroke(lineWidth: 2.0)
                                )
                            }.padding(.trailing)
                            
                            Spacer()
                        }
                        
                    } // ZStack
                    .frame(minHeight: 200,  maxHeight: 210)
                } else {
                    // ipad pro 12.9inch
                    // color combiner
                    ZStack{
                        RoundedRectangle(cornerRadius: 20)
                            .stroke(Color("card-foreground"), lineWidth: 4)
                            .shadow(color: .gray, radius: 3, x: 3, y: 3)
                        
                        RoundedRectangle(cornerRadius: 20)
                            .fill(Color("card"))
                        
                        // new version
                        HStack{
                            VStack{
                                // paint
                                HStack{
                                    Image("paint-left")
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .padding(.top)
                                    Image("paint-right")
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .padding(.top)
                                }
                                
                                
                                HStack{
                                    Button(action: {
                                        print("MIX")
  
                                    }) {
                                        HStack {
                                            Text("MIX")
                                                .fontWeight(.semibold)
                                                .font(.title)
                                                .frame(minWidth: 270)
                                        }
                                        .padding()
                                        .foregroundColor(.white)
                                        .background(LinearGradient(gradient: Gradient(colors: [Color.purple, Color("green"),  Color("blue-green")]), startPoint: .leading, endPoint: .trailing))
                                        .cornerRadius(40)

                                    }
                                    .padding()
                                }
                                
//                                // bucket
//                                HStack{
//                                    Image("bucket")
//                                        .resizable()
//                                        .aspectRatio(contentMode: .fit)
//                                        .offset(x: 17)
                                        
//                                }
                                
                            }
                            
//                            VStack{
//
//                                ZStack{
//                                    // Staff message
//                                    VStack{
//                                        HStack{
//                                            Spacer()
//                                            VStack{
//                                                Text(" Ready to sell? ")
//                                                    .foregroundColor(Color("message-font"))
//                                                    .background(
//                                                        RoundedRectangle(cornerRadius: 10)
//                                                            .fill(Color("message-box")
//                                                        )
//                                                    )
//                                                Text(" Push SELL button ")
//                                                    .foregroundColor(Color("message-font"))
//                                                    .background(
//                                                        RoundedRectangle(cornerRadius: 10)
//                                                            .fill(Color("message-box")
//                                                        )
//                                                    )
//                                            }
//
//                                        }
//                                        Spacer()
//                                    }
//                                    Image("staff1")
//                                        .resizable()
//                                        .aspectRatio(contentMode: .fit)
//                                }
//                                Button(action: {
//                                    print("button click")
//                                    myData.showModal.toggle()
//                                }, label: {
//                                    Text("SELL")
//                                })
//                                // 모달창
//                                .sheet(isPresented: $myData.showModal) {
//                                    ClearView()
//                                }
//
//                            }
                        }
                        
                        // old version
//                        HStack{
//                            // first color
//                            if selectFirst {
//                                Image("paint")
//                                    .resizable()
//                                    .renderingMode(.template)
//                                    .foregroundColor(firstColor)
//
//                            } else {
//                                ZStack{
//                                    Image("paint")
//                                        .resizable()
//                                        .renderingMode(.template)
//                                        .foregroundColor(firstColor)
//                                        .onTapGesture {
//                                            selectFirst.toggle()
//                                            if selectSceond {
//                                                selectSceond.toggle()
//                                            }
//                                        }
//                                    Text("Choose")
//                                        .foregroundColor(Color("font"))
//                                }
//                            }
//
//                            Image(systemName: "plus")
//
//                            // second color
//                            if selectSceond {
//                                Image("paint")
//                                    .resizable()
//                                    .renderingMode(.template)
//                                    .foregroundColor(secondColor)
//                            } else {
//                                ZStack{
//                                    Image("paint")
//                                        .resizable()
//                                        .renderingMode(.template)
//                                        .foregroundColor(secondColor)
//                                        .onTapGesture {
//                                            selectSceond.toggle()
//                                            if selectFirst {
//                                                selectFirst.toggle()
//                                            }
//                                        }
//                                    Text("Choose")
//                                        .foregroundColor(Color("font"))
//                                }
//
//                            }
//
//                            // MIX!!
//                            Button(action: {
//                                myData.randomCustomer = myData.getRandomCustomer()
//                                myData.resultColor = resultColor
//                                print("MIX button click")
//                                if myData.resultColor == myData.targetColor {
//                                    if myData.count < 10 {
//                                        Sounds2.play(sound: "correct", type: "mp3")
//                                        myData.count += 1
//                                    }
//                                    // set random target color
//                                    var randomColor = getRandomColor()
//                                    if myData.targetColor != randomColor{
//                                        myData.targetColor = randomColor
//                                    } else {
//                                        randomColor = getRandomColor()
//                                        if randomColor == myData.targetColor {
//                                            myData.targetColor = getRandomColor()
//                                        } else {
//                                            myData.targetColor = randomColor
//                                        }
//
//                                    }
//                                } else {
//                                    Sounds2.play(sound: "incorrect", type: "mp3")
//                                }
//                            }) {
//                                HStack {
//                                    Image(systemName: "sum")
//                                    Text("MIX")
//                                }.padding(10.0)
//                                .overlay(
//                                    RoundedRectangle(cornerRadius: 10.0)
//                                        .stroke(lineWidth: 2.0)
//                                )
//                            }.padding(.trailing)
//
//                            Spacer()
//                        }
                        
                    } // ZStack
                    .frame(minHeight: 300,  maxHeight: 310)
                }
            } // VStack
            .padding([.top, .bottom, .trailing])
        } // Geometry
    } // body
        
} // PaintView





// make circle
struct Arc: Shape {
    let startAngle: Angle
    let endAngle: Angle
    let clockwise: Bool
    let radius: Double
    let centerPoint: CGPoint

    func path(in rect: CGRect) -> Path {
      var path = Path()
//      let radius = max(rect.size.width, rect.size.height) / 2
        let radius = self.radius
    path.addArc(center: CGPoint(x: rect.midX, y: rect.midY),
                radius: radius,
                startAngle: startAngle,
                endAngle: endAngle,
                clockwise: clockwise)
    return path
  }
}

// mix colors
func mixColor(first: Color, second: Color) -> Color {
    let select = Set([first, second])
    
    switch select {
    //원색
    case Set([Color("yellow"), Color("yellow")]):
        return Color("yellow")
    case Set([Color("blue"), Color("blue")]):
        return Color("blue")
    case Set([Color("red"), Color("red")]):
        return Color("red")
    //2차색
    case Set([Color("yellow"), Color("red")]):
        return Color("orange")
    case Set([Color("yellow"), Color("blue")]):
        return Color("green")
    case Set([Color("red"), Color("blue")]):
        return Color("violet")
    //3차색
    case Set([Color("yellow"), Color("green")]):
        return Color("yellow-green")
    case Set([Color("yellow"), Color("orange")]):
        return Color("yellow-orange")
    case Set([Color("blue"), Color("green")]):
        return Color("blue-green")
    case Set([Color("blue"), Color("violet")]):
        return Color("blue-violet")
    case Set([Color("red"), Color("violet")]):
        return Color("red-violet")
    case Set([Color("red"), Color("orange")]):
        return Color("red-orange")
        
    case Set([Color("blue"), Color("orange")]):
        return Color("roman-coffe")
    case Set([Color("green"), Color("violet")]):
        return Color("roman-coffe")
    case Set([Color("yellow"), Color("violet")]):
        return Color("marigold")
    case Set([Color("green"), Color("orange")]):
        return Color("marigold")
    case Set([Color("red"), Color("green")]):
        return Color("tuscany")
    case Set([Color("orange"), Color("violet")]):
        return Color("tuscany")

    default:
        return Color("temp")
    }
}

func getRandomColor() -> Color {
    Array(Set([ Color("blue-green"), Color("blue-violet"), Color("green"), Color("orange"), Color("red-orange"), Color("red-violet"), Color("violet"), Color("yellow-green"), Color("yellow-orange")]))[0]
}

struct PaintView_Preview: PreviewProvider {
    static var previews: some View {
        PaintView()
            .previewInterfaceOrientation(.landscapeRight)
         
    }
}
