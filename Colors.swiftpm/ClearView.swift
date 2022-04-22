//
//  File.swift
//  Colors
//
//  Created by Terry Koo on 2022/04/22.
//

import SwiftUI

struct ClearView: View {
    @EnvironmentObject var myData: MyData
    @State private var acceptedTerms = false
       
       var body: some View {

               
                   VStack{
                       Text("All The Paint Is Out Of Stock")
                           .font(.largeTitle)
                           .fontWeight(.heavy)
                       
                       Image(myData.randomRich)
                       
                       Text("score : \(myData.right) / 10")
                           .font(.title)
                           .fontWeight(.bold)
                       
                       if myData.right == 10 {
                           Text("You're the best salesman")
                               .font(.title)
                       } else {
                           Text("You'll do better next time!")
                               .font(.title)
                       }


                       Button(action: {
                           print("Retry button")
                           myData.showModal.toggle()
                           acceptedTerms.toggle()
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
                           .interactiveDismissDisabled(!acceptedTerms)
                       }
                   }
                       
                   
               

       }
}




struct ClearView_Preview: PreviewProvider {
    static var previews: some View {
        ClearView()
         
    }
}
