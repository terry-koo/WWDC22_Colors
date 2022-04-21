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
           
           Button(action: {
               myData.showModal.toggle()
               acceptedTerms.toggle()
           }, label: {
               Text("close")
           })
           .interactiveDismissDisabled(!acceptedTerms)
       }
        
    
}


struct ClearView_Preview: PreviewProvider {
    static var previews: some View {
        ClearView()
         
    }
}
