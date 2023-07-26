//
//  ContentView.swift
//  WashPostClone
//
//  Created by greenthings on 2023/07/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            MainView()
                .tabItem {
                    Image(systemName: "heart")
                    Text("Top Stories")
                }
            AlertView()
                .tabItem {
                    Image(systemName:"bell")
                    Text("Alerts")
                }
            MyPostView()
                .tabItem {
                    Image(systemName:"person.circle")
                    Text("My Post")
                }
            PrintEditionView()
                .tabItem {
                    Image(systemName:"newspaper")
                    Text("Print Edition")
                }
        }
    }
}
