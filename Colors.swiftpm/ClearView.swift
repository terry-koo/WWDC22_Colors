import SwiftUI


struct ClearView: View {
    @EnvironmentObject var myData: MyData
    @State private var accept = false
    @State var time: String

    
   var body: some View {
       GeometryReader { geometry in
           VStack{
                   Text("All The Paint Is Out Of Stock!")
                       .font(.largeTitle)
                       .fontWeight(.heavy)
                       .padding()
                   
                   if myData.right > 5 {
                       if geometry.size.height < 800 {
                           Image(myData.randomRich)
                               .resizable()
                               .frame(width: 360, height: 310, alignment: .center)

                       } else {
                           Image(myData.randomRich)
                               .padding()
                       }
                   } else {
                       if geometry.size.height < 800 {
                       Image("closed")
                           .resizable()
                           .frame(width: 360, height: 310, alignment: .center)
                       } else {
                           Image("closed")
                               .resizable()
                               .frame(width: 600, height: 550, alignment: .center)
                       }
                   }
                  HStack{
                       Image(systemName: "timer")
                           .font(.title)
                       Text(time)
                           .font(.title)
                  }
                  
                   Text("score : \(myData.right) / 7")
                       .font(.title)
                       .fontWeight(.bold)
                       .padding()
                   
                   if myData.right > 5 {
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
           .frame(width: geometry.size.width)
               
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

