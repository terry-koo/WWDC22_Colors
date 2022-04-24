//
//  File 2.swift
//  Colors
//
//  Created by Terry Koo on 2022/04/24.
//

import SwiftUI

struct TipsView: View {
    @EnvironmentObject var myData: MyData
    
    var body: some View {
        VStack{
            HStack{
                Spacer()
                Button(action: {
                    myData.showInformation = false
                }, label:{
                    Image(systemName: "xmark")
                        .font(.title)
                        .foregroundColor(.gray)
                        .padding()
                    }
                )
                
            }
            .padding()
            VStack(alignment: .leading){
                Text("Developer : Terry Koo")
                    .font(.title)
                    
                Text("Contact : xpflxhfl94@naver.com")
                    .font(.title)
                    
            }
            Spacer()
            Text("Music: https://www.bensound.com")
                .foregroundColor(.gray)
                .font(.caption2)
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
