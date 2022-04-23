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
    @State var time: String
    
       
       var body: some View {

               
                   VStack{
                       Text("All The Paint Is Out Of Stock!")
                           .font(.largeTitle)
                           .fontWeight(.heavy)
                           .padding()
                       
                       if myData.right > 8 {
                           Image(myData.randomRich)
                               .padding()
                       } else {
                           Image("closed")
                               .resizable()
                               .frame(width: 600, height: 550, alignment: .center)
                       }
                       HStack{
                           Image(systemName: "timer")
                               .font(.title)
                           Text(time)
                               .font(.title)
                       }
                      
                       Text("score : \(myData.right) / 10")
                           .font(.title)
                           .fontWeight(.bold)
                           .padding()
                       
                       if myData.right > 7 {
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
                           rePlay(myData: myData)
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

func rePlay(myData: MyData){
    myData.wrong = 0
    myData.right = 0
    myData.count = 0
    myData.resultColor = "empty"
    myData.value = 0
    
}


//struct ClearView_Preview: PreviewProvider {
//    static var previews: some View {
//        ClearView()
//         
//    }
//}
