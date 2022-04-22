//
//  File.swift
//  Colors
//
//  Created by Terry Koo on 2022/04/22.
//

import SwiftUI

struct ClearView: View {
    @EnvironmentObject var myData: MyData
    @State private var accept = false
       
       var body: some View {

               
                   VStack{
                       Text("All The Paint Is Out Of Stock!")
                           .font(.largeTitle)
                           .fontWeight(.heavy)
                           .padding()
                       
                       Image(myData.randomRich)
                           .padding()
                       
                       Text("score : \(myData.right) / 10")
                           .font(.title)
                           .fontWeight(.bold)
                           .padding()
                       
                       if myData.right > 8 {
                           Text("You're the best salesman")
                               .font(.title)
                               .padding()
                       } else {
                           Text("You'll do better next time!")
                               .font(.title)
                               .padding(.top)
                               .opacity(0.5)
                       }


                       Button(action: {
                           print("Retry button")
                           myData.showModal.toggle()
                           accept.toggle()
                       }) {
                           HStack {
                               Image(systemName: "gobackward")
                                   .font(.title)
                               Text("Retry")
                                   .fontWeight(.semibold)
                                   .font(.title)
                                   .frame(minWidth: 270)
                           }
                           .padding()
                           .foregroundColor(.white)
                           .background(LinearGradient(gradient: Gradient(colors: [Color.purple, Color("blue-green")]), startPoint: .leading, endPoint: .trailing))
                           .cornerRadius(40)
                           .interactiveDismissDisabled(!accept)
                       }
                   }
                       
                   
               

       }
}




struct ClearView_Preview: PreviewProvider {
    static var previews: some View {
        ClearView()
         
    }
}
