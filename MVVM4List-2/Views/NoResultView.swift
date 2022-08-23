//
//  EmptyView.swift
//  MVVM4List-2
//
//  Created by Ahmet Ali ÇETİN on 22.08.2022.
//

import SwiftUI

struct NoResultView: View {
    @Binding var searchableText: String
    
    var body: some View {
        VStack(alignment: .center, spacing: 20){
            Image("NoResult")
                .resizable()
                .frame(width: 300, height: 259, alignment: .center)
                .scaledToFit()
            Spacer()
                .frame(height: 10)
            Text("No result for '\(searchableText)'")
                .foregroundColor(.gray)
                .font(.title3)
        }
    }
}

struct EmptyView_Previews: PreviewProvider {
    static var previews: some View {
        NoResultView(searchableText: .constant("..."))
    }
}
