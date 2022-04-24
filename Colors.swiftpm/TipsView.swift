import SwiftUI

struct TipsView: View {
    @EnvironmentObject var myData: MyData
    @State private var accept = false

    var body: some View {
       GeometryReader { geometry in
           VStack{
               Text("The secret of colors")
                   .font(.largeTitle)
                   .fontWeight(.heavy)
                   .padding()
               HStack{
                   Text("Primary colors")
                       .font(.title)
                       .padding()
                   Spacer()
               }

               HStack{
                   Circle()
                       .fill(Color("red"))
                   Circle()
                       .fill(Color("blue"))
                   Circle()
                       .fill(Color("yellow"))
                       .padding(.trailing)
               }
               
               HStack{
                   Text("Secondary colors")
                       .font(.title)
                       .padding()
                   Spacer()
               }
               HStack{
                   Circle()
                       .fill(Color("green"))
                   Circle()
                       .fill(Color("orange"))
                   Circle()
                       .fill(Color("violet"))
                       .padding(.trailing)
               }
               
               // ipad 9.7 inch
               if geometry.size.height < 689 {
                   HStack{
                       VStack{
                           Image("staff1")
                               .resizable()
                               .aspectRatio(contentMode: .fit)
                       }
                       VStack(alignment: .leading){
                           Text("If you combine the primary colors,")
                               .font(.title2)
                               
                           
                           Text("you get a secondary color.")
                               .font(.title2)
                               .padding(.bottom)
                           
                           Text("Than what happens when primary and")
                               .font(.title2)
                           Text("secondary colors are combined?")
                               .font(.title2)
                       }
                   }
               } else {
                   HStack{
                       VStack{
                           Image("staff1")
                               .resizable()
                               .aspectRatio(contentMode: .fit)
                       }
                       VStack(alignment: .leading){
                           Text("If you combine the primary colors, \nyou get a secondary color.")
                               .font(.title2)
                               .padding(.bottom)
                           
                           Text("Than what happens when primary and secondary colors are combined?")
                               .font(.title2)
                       }
                   }
               }
            
                   Button(action: {
                       print("Retry button")
                       myData.showTips = false
                       accept.toggle()
                       
                   }) {
                       HStack {
                           Text("START")
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
           .padding()
       }
    }
}



struct Tips_Preview: PreviewProvider {
    static var previews: some View {
        TipsView()
            .previewInterfaceOrientation(.landscapeRight)
    }
}
