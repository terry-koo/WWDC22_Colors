import SwiftUI


struct Tutorial12: View {

    var body: some View {
        

        ZStack{
            GeometryReader { geometry in
                
                // 9.7inch
                if geometry.size.height < 769 {
                    ZStack{
                        Rectangle()
                            .fill(.black)
                            .opacity(0.85)
                            .edgesIgnoringSafeArea(.all)
                        
                        GeometryReader{ geometry in
                            let centerPoint = CGPoint(x: geometry.size.width/2, y: geometry.size.height/2)
                            let weight: Double = geometry.size.width * 0.183
                            
                            // triangle yellow
                            Path { path in
                                path.move(to: centerPoint)
                                path.addLine(to: CGPoint(x: centerPoint.x + (3.0).squareRoot() / 2 * weight, y: centerPoint.y - 1 / 2 * weight))
                                path.addLine(to: CGPoint(x: centerPoint.x , y: centerPoint.y - 2 * weight))
                                path.addLine(to: CGPoint(x: centerPoint.x - (3.0).squareRoot() / 2 * weight, y: centerPoint.y - 1 / 2 * weight))
                                path.addLine(to: centerPoint)
                                path.closeSubpath()
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
                            
                            
                            //triangle blue
                            Path { path in
                                path.move(to: centerPoint)
                                path.addLine(to: CGPoint(x: centerPoint.x - (3.0).squareRoot() / 2 * weight, y: centerPoint.y - 1 / 2 * weight))
                                path.addLine(to: CGPoint(x: centerPoint.x - (3.0).squareRoot() * weight , y: centerPoint.y + 1 * weight))
                                path.addLine(to: CGPoint(x: centerPoint.x , y: centerPoint.y + 1  * weight))
                                path.addLine(to: centerPoint)
                                path.closeSubpath()
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
                            
                            
                            
                            // secondary color green
                            Path { path in
                                path.move(to: CGPoint(x: centerPoint.x , y: centerPoint.y - 2 * weight))
                                path.addLine(to: CGPoint(x: centerPoint.x - (3.0).squareRoot() * weight , y: centerPoint.y + 1 * weight))
                                path.addLine(to: CGPoint(x: centerPoint.x - (3.0).squareRoot() * weight , y: centerPoint.y - 1 * weight))
                                
                                path.addLine(to: CGPoint(x: centerPoint.x , y: centerPoint.y - 2 * weight))
                                path.closeSubpath()
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
                            
                            
                            
                            
                        } // GeometryReader
                        
                        .blendMode(.destinationOut)
                        .frame(width: 400, height: 400)
                        .offset(x: 248, y: -99)
                        
                        
                        
                        RoundedRectangle(cornerRadius: 10)
                            .blendMode(.destinationOut)
                            .frame(width: 130, height: 120)
                            .offset(x: 310, y: 220)
                    }
                    .compositingGroup()
                    
                    
                    Text(" \"Third, tap on the remaining bucket and select the green from the hexagon\" ")
                        .foregroundColor(Color("message-font"))
                        .background(
                            RoundedRectangle(cornerRadius: 10)
                                .fill(Color("message-box")
                                     )
                        )
                        .font(.largeTitle)
                        .offset(x: 50, y: 450)
                    
                // 11inch
                } else if geometry.size.height < 835 {
                    ZStack{
                        Rectangle()
                            .fill(.black)
                            .opacity(0.85)
                            .edgesIgnoringSafeArea(.all)
                        
                        
                        RoundedRectangle(cornerRadius: 10)
                            .blendMode(.destinationOut)
                            .frame(width: 170, height: 160)
                            .offset(x: 380, y: 200)
                        
                        GeometryReader{ geometry in
                            let centerPoint = CGPoint(x: geometry.size.width/2, y: geometry.size.height/2)
                            let weight: Double = geometry.size.width * 0.215
                            
                            // triangle yellow
                            Path { path in
                                path.move(to: centerPoint)
                                path.addLine(to: CGPoint(x: centerPoint.x + (3.0).squareRoot() / 2 * weight, y: centerPoint.y - 1 / 2 * weight))
                                path.addLine(to: CGPoint(x: centerPoint.x , y: centerPoint.y - 2 * weight))
                                path.addLine(to: CGPoint(x: centerPoint.x - (3.0).squareRoot() / 2 * weight, y: centerPoint.y - 1 / 2 * weight))
                                path.addLine(to: centerPoint)
                                path.closeSubpath()
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
                            
                            
                            //triangle blue
                            Path { path in
                                path.move(to: centerPoint)
                                path.addLine(to: CGPoint(x: centerPoint.x - (3.0).squareRoot() / 2 * weight, y: centerPoint.y - 1 / 2 * weight))
                                path.addLine(to: CGPoint(x: centerPoint.x - (3.0).squareRoot() * weight , y: centerPoint.y + 1 * weight))
                                path.addLine(to: CGPoint(x: centerPoint.x , y: centerPoint.y + 1  * weight))
                                path.addLine(to: centerPoint)
                                path.closeSubpath()
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
                            
                            
                            
                            // secondary color green
                            Path { path in
                                path.move(to: CGPoint(x: centerPoint.x , y: centerPoint.y - 2 * weight))
                                path.addLine(to: CGPoint(x: centerPoint.x - (3.0).squareRoot() * weight , y: centerPoint.y + 1 * weight))
                                path.addLine(to: CGPoint(x: centerPoint.x - (3.0).squareRoot() * weight , y: centerPoint.y - 1 * weight))
                                
                                path.addLine(to: CGPoint(x: centerPoint.x , y: centerPoint.y - 2 * weight))
                                path.closeSubpath()
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
                            
                            
                            
                            
                        } // GeometryReader
                        
                        .blendMode(.destinationOut)
                        .frame(width: 400, height: 400)
                        .offset(x: 290, y: -137)
                    }
                    .compositingGroup()
                    
                    
                    Text(" \"Third, tap on the remaining bucket and select the green from the hexagon\" ")
                        .foregroundColor(Color("message-font"))
                        .background(
                            RoundedRectangle(cornerRadius: 10)
                                .fill(Color("message-box")
                                     )
                        )
                        .font(.largeTitle)
                        .offset(x: 50, y: 450)
            
                
                // 12.9inch
                } else {
                    
                    ZStack{
                        Rectangle()
                            .fill(.black)
                            .opacity(0.85)
                            .edgesIgnoringSafeArea(.all)
                        
                        GeometryReader{ geometry in
                            let centerPoint = CGPoint(x: geometry.size.width/2, y: geometry.size.height/2)
                            let weight: Double = geometry.size.width * 0.255
                            
                            // triangle yellow
                            Path { path in
                                path.move(to: centerPoint)
                                path.addLine(to: CGPoint(x: centerPoint.x + (3.0).squareRoot() / 2 * weight, y: centerPoint.y - 1 / 2 * weight))
                                path.addLine(to: CGPoint(x: centerPoint.x , y: centerPoint.y - 2 * weight))
                                path.addLine(to: CGPoint(x: centerPoint.x - (3.0).squareRoot() / 2 * weight, y: centerPoint.y - 1 / 2 * weight))
                                path.addLine(to: centerPoint)
                                path.closeSubpath()
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
                            
                            
                            //triangle blue
                            Path { path in
                                path.move(to: centerPoint)
                                path.addLine(to: CGPoint(x: centerPoint.x - (3.0).squareRoot() / 2 * weight, y: centerPoint.y - 1 / 2 * weight))
                                path.addLine(to: CGPoint(x: centerPoint.x - (3.0).squareRoot() * weight , y: centerPoint.y + 1 * weight))
                                path.addLine(to: CGPoint(x: centerPoint.x , y: centerPoint.y + 1  * weight))
                                path.addLine(to: centerPoint)
                                path.closeSubpath()
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
                            
                            
                            
                            // secondary color green
                            Path { path in
                                path.move(to: CGPoint(x: centerPoint.x , y: centerPoint.y - 2 * weight))
                                path.addLine(to: CGPoint(x: centerPoint.x - (3.0).squareRoot() * weight , y: centerPoint.y + 1 * weight))
                                path.addLine(to: CGPoint(x: centerPoint.x - (3.0).squareRoot() * weight , y: centerPoint.y - 1 * weight))
                                
                                path.addLine(to: CGPoint(x: centerPoint.x , y: centerPoint.y - 2 * weight))
                                path.closeSubpath()
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
                            
                            
                            
                            
                        } // GeometryReader
                        
                        .blendMode(.destinationOut)
                        .frame(width: 400, height: 400)
                        .offset(x: 333, y: -157)
                        
                        RoundedRectangle(cornerRadius: 10)
                            .blendMode(.destinationOut)
                            .frame(width: 220, height: 200)
                            .offset(x: 450, y: 280)
                    }
                    .compositingGroup()
                    
                    
                    Text(" \"Third, tap on the remaining bucket and select the green from the hexagon\" ")
                        .foregroundColor(Color("message-font"))
                        .background(
                            RoundedRectangle(cornerRadius: 10)
                                .fill(Color("message-box")
                                     )
                        )
                        .font(.largeTitle)
                        .offset(x: 200, y: 600)
                }
            }
  
        }
    }
    
}
