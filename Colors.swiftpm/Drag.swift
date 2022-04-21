//
//  File.swift
//  Colors
//
//  Created by Terry Koo on 2022/04/20.
//

import SwiftUI



struct Drag: View {

    
    var body: some View {
        // 2.
        HStack{
            Character()
            Spacer()
            Character()
        }
        
    }
}

struct Character: View{
    @State private var currentPosition: CGSize = .zero
    @State private var newPosition: CGSize = .zero
    
    var body: some View {
        Circle()
            .frame(width: 100, height: 100)
            .foregroundColor(Color.red)
            .offset(x: self.currentPosition.width, y: self.currentPosition.height)
            // 3.
            .gesture(DragGesture()
                .onChanged { value in
                    self.currentPosition = CGSize(
                        width: value.translation.width + self.newPosition.width,
                        height: value.translation.height + self.newPosition.height
                    )
            }   // 4.
                .onEnded { value in
                    self.currentPosition = CGSize(
                        width: value.translation.width + self.newPosition.width,
                        height: value.translation.height + self.newPosition.height
                    )
                    self.newPosition = self.currentPosition
                    print(self.newPosition.width)
                }
        )
    }
}



struct Drag_Preview: PreviewProvider {
    static var previews: some View {
        Drag()
            .previewInterfaceOrientation(.portrait)
    }
}
