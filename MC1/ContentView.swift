//
//  LinView.swift
//  CloneSettingApp
//
//  Created by yegang on 3/24/24.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        // 나중에 Text() 있는 자리에 그 아이콘을 눌렀을 때 나올 화면 뷰 연결 시키면 됨
        TabView {
            
            
            HomeView()
                .tabItem {
                    Image(systemName: "house.fill")
                }
            
            IcecreamView()
                .tabItem {
                    Image(systemName: "map.fill")
                }
            
            Text("Review")
                .tabItem {
                    Image(systemName: "pencil")
                }
            
            Text("My Page")
                .tabItem {
                    Image(systemName: "person")
                }
        }
        .accentColor(.yellow)
        .padding(.top, 20)
        
    }
    
}

#Preview {
    ContentView()
}
