//
//  TopTabView.swift
//  WashPostClone
//
//  Created by greenthings on 2023/07/26.
//

import SwiftUI

struct SegmentTabBarView: View {
    @State var currentTab: Int = 0
    @Namespace var namespace
    var tabBarOptions: [String] = ["Top Stories", "For You", "Latest Headlines"]
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack() {
                ForEach(tabBarOptions.indices, id: \.self) { index in
                    let title = tabBarOptions[index]
                    TabBarItem(currentTab: $currentTab,
                               namespace: namespace,
                               title: title,
                               tab: index)
                    .padding(.trailing,15)
    
                }
                
                Spacer()
                
                Image(systemName: "line.3.horizontal.decrease.circle")
            }
            .padding(.horizontal)
       
        }
        .background(Color.white)
        .frame(height: 40)
    }
}


struct TabBarItem: View {
    @Binding var currentTab: Int
    let namespace: Namespace.ID
    
    var title: String
    var tab: Int
    
    var body: some View {
        Button {
            currentTab = tab
        } label: {
            VStack {
                Spacer()
                Text(title)
                if currentTab == tab {
                    Color.black
                        .frame(height: 2)
                        .matchedGeometryEffect(id: "underline",
                                               in: namespace.self)
                        .bold()
                } else {
                    Color.clear.frame(height: 2)
                }
            }
            .animation(.spring(), value: currentTab)
        }
        .buttonStyle(.plain)
    }
}
