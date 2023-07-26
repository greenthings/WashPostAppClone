//
//  MainView.swift
//  WashPostClone
//
//  Created by greenthings on 2023/07/26.
//

import SwiftUI

struct MainView: View {
    
    var body: some View {
        
        
        VStack{
            MainTopView()
            
            SegmentTabBarView()
            
            List {
                Rectangle()
            }

        }

    }
}

