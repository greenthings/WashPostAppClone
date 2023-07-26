//
//  MainTopView.swift
//  WashPostClone
//
//  Created by greenthings on 2023/07/26.
//

import SwiftUI

struct MainTopView: View {
    var body: some View {
        HStack{
            Image(systemName: "text.alignleft")
            Spacer()
            Text("The Wash Post")
            Spacer()
            Image(systemName: "magnifyingglass")
        }
        .padding(10)
    
        
    }
}

struct MainTopView_Previews: PreviewProvider {
    static var previews: some View {
        MainTopView()
    }
}
