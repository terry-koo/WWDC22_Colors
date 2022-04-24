import SwiftUI


struct Tutorial10: View {
    
    
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
  
                        } // GeometryReader
                        
                        .blendMode(.destinationOut)
                        .frame(width: 400, height: 400)
                        .offset(x: 248, y: -99)
                        
                    } // ZStack
                    Text(" \"Second, select the yellow from the hexagon \n Because yellow-green is made by mixing yellow and green\" ")
                        .foregroundColor(Color("message-font"))
                        .background(
                            RoundedRectangle(cornerRadius: 10)
                                .fill(Color("message-box")
                                     )
                        )
                        .font(.largeTitle)
                        .offset(x: -40, y: 125)
                    
                }
                .compositingGroup()
        
            // 11inch
            } else if geometry.size.height < 835 {
                ZStack{
                    ZStack{
                        Rectangle()
                            .fill(.black)
                            .opacity(0.85)
                            .edgesIgnoringSafeArea(.all)

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
                    } // ZStack
                    Text(" \"Second, select the yellow from the hexagon \n Because yellow-green is made by mixing yellow and green\" ")
                        .foregroundColor(Color("message-font"))
                        .background(
                            RoundedRectangle(cornerRadius: 10)
                                .fill(Color("message-box")
                                     )
                        )
                        .font(.largeTitle)
                        .offset(x: 0, y: 105)
                }
                .compositingGroup()
            
            // 12.9inch
            } else {
                ZStack{
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
                        
                    } // ZStack
                    Text(" \"Second, select the yellow from the hexagon \n Because yellow-green is made by mixing yellow and green\" ")
                        .foregroundColor(Color("message-font"))
                        .background(
                            RoundedRectangle(cornerRadius: 10)
                                .fill(Color("message-box")
                                     )
                        )
                        .font(.largeTitle)
                        .offset(x: 0, y: 105)
                    
                }
                .compositingGroup()
            }
        }
    }
}

struct Tutorial10_Preview: PreviewProvider {
    static var previews: some View {
        Tutorial10()
            .previewInterfaceOrientation(.landscapeRight)
    }
}
