//
//  File.swift
//  Colors
//
//  Created by Terry Koo on 2022/04/22.
//

import SwiftUI

struct ClearView: View {
    @State private var acceptedTerms = false
       
       var body: some View {
           
               Button("Accept Terms") {
                   acceptedTerms = true
               }
           
           .interactiveDismissDisabled(!acceptedTerms)
       }
        
    
}


struct ClearView_Preview: PreviewProvider {
    static var previews: some View {
        ClearView()
         
    }
}
