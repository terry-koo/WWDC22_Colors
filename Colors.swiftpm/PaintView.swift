import SwiftUI


struct PaintView: View {
    @State private var canTouchDown = true
    @State private var firstColor = "empty"
    @State private var secondColor = "empty"
    @State private var selectFirst = false
    @State private var selectSceond = false
    @EnvironmentObject var myData: MyData


    


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
                            .sheet(isPresented: $myData.showTips) {
                                TipsView()
                            }
                        
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
                                    firstColor = "yellow"
                                    selectFirst.toggle()
                                } else if selectSceond {
                                    secondColor = "yellow"
                                    selectSceond.toggle()
                                }
                                myData.resultColor = mixColor(first: firstColor, second: secondColor)
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
                                    firstColor = "red"
                                    selectFirst.toggle()
                                } else if selectSceond {
                                    secondColor = "red"
                                    selectSceond.toggle()
                                }
                                
                                myData.resultColor = mixColor(first: firstColor, second: secondColor)
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
                                    firstColor = "blue"
                                    selectFirst.toggle()
                                } else if selectSceond {
                                    secondColor = "blue"
                                    selectSceond.toggle()
                                }
                                myData.resultColor = mixColor(first: firstColor, second: secondColor)
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
                                    firstColor = "orange"
                                    selectFirst.toggle()
                                } else if selectSceond {
                                    secondColor = "orange"
                                    selectSceond.toggle()
                                }
                                myData.resultColor = mixColor(first: firstColor, second: secondColor)
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
                                    firstColor = "green"
                                    selectFirst.toggle()
                                } else if selectSceond {
                                    secondColor = "green"
                                    selectSceond.toggle()
                                }
                                myData.resultColor = mixColor(first: firstColor, second: secondColor)
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
                                    firstColor = "violet"
                                    selectFirst.toggle()
                                } else if selectSceond {
                                    secondColor = "violet"
                                    selectSceond.toggle()
                                }
                                myData.resultColor = mixColor(first: firstColor, second: secondColor)
                            }
         
                           
                        } // GeometryReader
                       
                    } // ZStack

                
                // ipad pro 9.7inch
                //############################################################################################################################################
                if paintGeometry.size.height < 749.0 {
                    // color combiner
                    ZStack{
                        RoundedRectangle(cornerRadius: 20)
                            .stroke(Color(hue: 1.0, saturation: 0.0, brightness: 0.955), lineWidth: 4)
                            .shadow(color: .gray, radius: 3, x: 3, y: 3)
                        
                        RoundedRectangle(cornerRadius: 20)
                            .fill(Color("card"))

                        // new version
                        HStack{
                            VStack{
                                // paint
                                HStack{
                                    // first paint
                                    if selectFirst {
                                        Image("left-paint-\(firstColor)")
                                            .resizable()
                                            .aspectRatio(contentMode: .fit)
                                            .padding([.top, .leading])
      
                                    } else {
                                        ZStack{
                                            Image("left-paint-\(firstColor)")
                                                .resizable()
                                                .aspectRatio(contentMode: .fit)
                                                .padding([.top, .leading])
                                                .onTapGesture {
                                                    selectFirst.toggle()
                                                    if selectSceond {
                                                        selectSceond.toggle()
                                                    }
                                                }
                                            Text("Choose")
                                                .offset(y: 20)
                                        }
                                            
                                    }
                                    
                                    // second paint
                                    if selectSceond {
                                        
                                        Image("right-paint-\(secondColor)")
                                            .resizable()
                                            .aspectRatio(contentMode: .fit)
                                            .padding([.top, .trailing])
             
                                    } else {
                                        ZStack{
                                            Image("right-paint-\(secondColor)")
                                                .resizable()
                                                .aspectRatio(contentMode: .fit)
                                                .padding([.top, .trailing])
                                                .onTapGesture {
                                                    selectSceond.toggle()
                                                    if selectFirst {
                                                        selectFirst.toggle()
                                                    }
                                                }
                                            Text("Choose")
                                                .offset(y: 20)
                                        }
                                    }
                                }
                                
                                
                                HStack{
                                    Button(action: {
                                        myData.count += 1
                                        
                                        if myData.resultColor == myData.targetColor {
                                            myData.right += 1
                                            if myData.count < 10 {
                                                print("correct")
                                                Sounds2.play(sound: "correct", type: "mp3")
                                                
                                            } else {
                                                // game over
                                                print("10번째")
                                                selectFirst = false
                                                selectSceond = false
                                                firstColor = "empty"
                                                secondColor = "empty"
                                                myData.showModal.toggle()
                                                Sounds2.play(sound: "clear", type: "mp3")
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
                                            myData.wrong += 1
                                            Sounds2.play(sound: "incorrect", type: "mp3")
                                            
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
                                            
                                            // game over
                                            if myData.count == 10 {
                                                Sounds2.play(sound: "clear", type: "mp3")
                                                print("10번째")
                                                selectFirst = false
                                                selectSceond = false
                                                firstColor = "empty"
                                                secondColor = "empty"
                                                myData.showModal.toggle()
                                            }
                                        }
                                        firstColor = "empty"
                                        secondColor = "empty"
                                        myData.resultColor = "empty"
                                    }) {
                                        HStack {
                                            Text("SELL")
                                                .fontWeight(.semibold)
                                                .font(.title)
                                                .frame(width: 200, height: 20)
                                        }
                                        .padding()
                                        .foregroundColor(.white)
                                        .background(LinearGradient(gradient: Gradient(colors: [Color(firstColor), Color(myData.resultColor), Color(myData.resultColor),  Color(secondColor)]), startPoint: .leading, endPoint: .trailing))
                                        .cornerRadius(40)

                                    }
                                    .padding()
                                    .sheet(isPresented: $myData.showModal) {
                                        ClearView(time: myData.getTime())
                                    }
                                }
                                
                                
                            }
                            
                        }
                        //##############################################################################################################
                    } // ZStack
                    .frame(minHeight: 200,  maxHeight: 210)
                    
                // ipad pro 11inch
                } else if paintGeometry.size.height < 800.0 {
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
                                    // first paint
                                    if selectFirst {
                                        Image("left-paint-\(firstColor)")
                                            .resizable()
                                            .aspectRatio(contentMode: .fit)
                                            .padding([.top, .leading])
                                            
                                    } else {
                                       
                                        ZStack{
                                            Image("left-paint-\(firstColor)")
                                                .resizable()
                                                .aspectRatio(contentMode: .fit)
                                                .padding([.top, .leading])
                                                .onTapGesture {
                                                    selectFirst.toggle()
                                                    if selectSceond {
                                                        selectSceond.toggle()
                                                    }
                                                }
                                            if firstColor == "empty"{
                                                Text("Choose")
                                                    .font(.title)
                                                    .fontWeight(.bold)
                                                    .foregroundColor(.black)
                                                    .offset(x: -10, y: 40 )
                                            } else if firstColor != "empty" && secondColor != "empty" {
                                                Text("Choose")
                                                    .foregroundColor(.black)
                                                    .font(.title)
                                                    .fontWeight(.bold)
                                                    .offset(x: -10, y: 40 )
                                                    
                                            }
                                        }
    
                                    }
                                    
                                    // second paint
                                    if selectSceond {
                                        
                                        Image("right-paint-\(secondColor)")
                                            .resizable()
                                            .aspectRatio(contentMode: .fit)
                                            .padding([.top, .trailing])
             
                                    } else {
                                        
                                        ZStack{
                                            Image("right-paint-\(secondColor)")
                                                .resizable()
                                                .aspectRatio(contentMode: .fit)
                                                .padding([.top, .trailing])
                                                .onTapGesture {
                                                    selectSceond.toggle()
                                                    if selectFirst {
                                                        selectFirst.toggle()
                                                    }
                                                }
                                            if secondColor == "empty"{
                                                Text("Choose")
                                                    .font(.title)
                                                    .foregroundColor(.black)
                                                    .fontWeight(.bold)
                                                    .offset(x: 10, y: 40 )
                                            } else if firstColor != "empty" && secondColor != "empty" {
                                                Text("Choose")
                                                    .font(.title)
                                                    .foregroundColor(.black)
                                                    .fontWeight(.bold)
                                                    .offset(x: 10, y: 40 )
                                            }
                                        }
                                    }
                                }
                                
                                
                                HStack{
                                    Button(action: {
                                       
                                        myData.count += 1
                                        
                                        print("MIX button click")
                                        print(myData.resultColor)
                                        print(myData.targetColor)
                                        if myData.resultColor == myData.targetColor {
                                            myData.right += 1
                                            if myData.count < 10 {
                                                print("correct")
                                                Sounds2.play(sound: "correct", type: "mp3")
                                                
                                            } else {
                                                // game over
                                                print("10번째")
                                                selectFirst = false
                                                selectSceond = false
                                                firstColor = "empty"
                                                secondColor = "empty"
                                                myData.showModal.toggle()
                                                Sounds2.play(sound: "clear", type: "mp3")
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
                                            myData.wrong += 1
                                            Sounds2.play(sound: "incorrect", type: "mp3")
                                            
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
                                            
                                            // game over
                                            if myData.count == 10 {
                                                Sounds2.play(sound: "clear", type: "mp3")
                                                print("10번째")
                                                selectFirst = false
                                                selectSceond = false
                                                firstColor = "empty"
                                                secondColor = "empty"
                                                myData.showModal.toggle()
                                            }
                                        }
                                        firstColor = "empty"
                                        secondColor = "empty"
                                        myData.resultColor = "empty"
                                    }) {
                                        HStack {
                                            Text("SELL")
                                                .fontWeight(.semibold)
                                                .font(.title)
                                                .frame(minWidth: 270)
                                        }
                                        .padding()
                                        .foregroundColor(.white)
                                        .background(LinearGradient(gradient: Gradient(colors: [Color(firstColor), Color(myData.resultColor), Color(myData.resultColor),  Color(secondColor)]), startPoint: .leading, endPoint: .trailing))
                                        .cornerRadius(40)

                                    }
                                    .padding()
                                    .sheet(isPresented: $myData.showModal) {
                                        ClearView(time: myData.getTime())
                                    }
                                }
                                
                                
                            }
                            
                        }
                        
                    
                    } // ZStack
                    .frame(minHeight: 260,  maxHeight: 270)
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
                                    // first paint
                                    if selectFirst {
                                        Image("left-paint-\(firstColor)")
                                            .resizable()
                                            .aspectRatio(contentMode: .fit)
                                            .padding([.top, .leading])
                                            
                                    } else {
                                       
                                        ZStack{
                                            Image("left-paint-\(firstColor)")
                                                .resizable()
                                                .aspectRatio(contentMode: .fit)
                                                .padding([.top, .leading])
                                                .onTapGesture {
                                                    selectFirst.toggle()
                                                    if selectSceond {
                                                        selectSceond.toggle()
                                                    }
                                                }
                                            if firstColor == "empty"{
                                                Text("Choose")
                                                    .font(.title)
                                                    .fontWeight(.bold)
                                                    .foregroundColor(.black)
                                                    .offset(x: -10, y: 40 )
                                            } else if firstColor != "empty" && secondColor != "empty" {
                                                Text("Choose")
                                                    .foregroundColor(.black)
                                                    .font(.title)
                                                    .fontWeight(.bold)
                                                    .offset(x: -10, y: 40 )
                                                    
                                            }
                                        }
    
                                    }
                                    
                                    // second paint
                                    if selectSceond {
                                        
                                        Image("right-paint-\(secondColor)")
                                            .resizable()
                                            .aspectRatio(contentMode: .fit)
                                            .padding([.top, .trailing])
             
                                    } else {
                                        
                                        ZStack{
                                            Image("right-paint-\(secondColor)")
                                                .resizable()
                                                .aspectRatio(contentMode: .fit)
                                                .padding([.top, .trailing])
                                                .onTapGesture {
                                                    selectSceond.toggle()
                                                    if selectFirst {
                                                        selectFirst.toggle()
                                                    }
                                                }
                                            if secondColor == "empty"{
                                                Text("Choose")
                                                    .font(.title)
                                                    .foregroundColor(.black)
                                                    .fontWeight(.bold)
                                                    .offset(x: 10, y: 40 )
                                            } else if firstColor != "empty" && secondColor != "empty" {
                                                Text("Choose")
                                                    .font(.title)
                                                    .foregroundColor(.black)
                                                    .fontWeight(.bold)
                                                    .offset(x: 10, y: 40 )
                                            }
                                        }
                                    }
                                }
                                
                                
                                HStack{
                                    Button(action: {
                                       
                                        myData.count += 1
                                        
                                        print("MIX button click")
                                        print(myData.resultColor)
                                        print(myData.targetColor)
                                        if myData.resultColor == myData.targetColor {
                                            myData.right += 1
                                            if myData.count < 10 {
                                                print("correct")
                                                Sounds2.play(sound: "correct", type: "mp3")
                                                
                                            } else {
                                                // game over
                                                print("10번째")
                                                selectFirst = false
                                                selectSceond = false
                                                firstColor = "empty"
                                                secondColor = "empty"
                                                myData.showModal.toggle()
                                                Sounds2.play(sound: "clear", type: "mp3")
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
                                            myData.wrong += 1
                                            Sounds2.play(sound: "incorrect", type: "mp3")
                                            
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
                                            
                                            // game over
                                            if myData.count == 10 {
                                                Sounds2.play(sound: "clear", type: "mp3")
                                                print("10번째")
                                                selectFirst = false
                                                selectSceond = false
                                                firstColor = "empty"
                                                secondColor = "empty"
                                                myData.showModal.toggle()
                                            }
                                        }
                                        firstColor = "empty"
                                        secondColor = "empty"
                                        myData.resultColor = "empty"
                                    }) {
                                        HStack {
                                            Text("SELL")
                                                .fontWeight(.semibold)
                                                .font(.title)
                                                .frame(minWidth: 270)
                                        }
                                        .padding()
                                        .foregroundColor(.white)
                                        .background(LinearGradient(gradient: Gradient(colors: [Color(firstColor), Color(myData.resultColor), Color(myData.resultColor),  Color(secondColor)]), startPoint: .leading, endPoint: .trailing))
                                        .cornerRadius(40)

                                    }
                                    .padding()
                                    .sheet(isPresented: $myData.showModal) {
                                        ClearView(time: myData.getTime())
                                    }
                                }
                                
                                
                            }
                            
                        }
                        
                    
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
func mixColor(first: String, second: String) -> String {
    let select = Set([Color(first), Color(second)])
    
    switch select {
    //원색
    case Set([Color("yellow"), Color("yellow")]):
        return "yellow"
    case Set([Color("blue"), Color("blue")]):
        return "blue"
    case Set([Color("red"), Color("red")]):
        return "red"
    //2차색
    case Set([Color("yellow"), Color("red")]):
        return "orange"
    case Set([Color("yellow"), Color("blue")]):
        return "green"
    case Set([Color("red"), Color("blue")]):
        return "violet"
    //3차색
    case Set([Color("yellow"), Color("green")]):
        return "yellow-green"
    case Set([Color("yellow"), Color("orange")]):
        return "yellow-orange"
    case Set([Color("blue"), Color("green")]):
        return "blue-green"
    case Set([Color("blue"), Color("violet")]):
        return "blue-violet"
    case Set([Color("red"), Color("violet")]):
        return "red-violet"
    case Set([Color("red"), Color("orange")]):
        return "red-orange"
    case Set([Color("orange"), Color("orange")]):
        return "orange"
    case Set([Color("green"), Color("green")]):
        return "green"
    case Set([Color("violet"), Color("violet")]):
        return "violet"
        
    case Set([Color("blue"), Color("orange")]):
        return "roman-coffe"
    case Set([Color("green"), Color("violet")]):
        return "roman-coffe"
    case Set([Color("yellow"), Color("violet")]):
        return "marigold"
    case Set([Color("green"), Color("orange")]):
        return "marigold"
    case Set([Color("red"), Color("green")]):
        return "tuscany"
    case Set([Color("orange"), Color("violet")]):
        return "tuscany"

    default:
        return "empty"
    }
}


func getRandomColor() -> String {
    Array(Set(["blue-green", "blue-violet", "green", "orange", "red-orange", "red-violet", "violet", "yellow-green", "yellow-orange"]))[0]
}

struct PaintView_Preview: PreviewProvider {
    static var previews: some View {
        PaintView()
            .previewInterfaceOrientation(.landscapeRight)
         
    }
}
