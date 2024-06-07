//
//  T_SApp.swift
//  T&S
//
//  Created by  Adam-James  Cooper on 2024-06-03.
//

import SwiftUI

@main
struct T_SApp: App {
    
    @State private var selectedTab = 1
    
    var body: some Scene {
        WindowGroup {
            TabView(selection: $selectedTab) {
                HomePage()
                    .tabItem {
                        Image(systemName: "house")
                        Text("Home")
                    }
                    .tag(1)

                Text("Search")
                    .tabItem {
                        Image(systemName: "magnifyingglass")
                        Text("Search")
                    }
                    .tag(2)

                Text("Shopping Cart")
                    .tabItem {
                        Image(systemName: "cart")
                        Text("Shopping Cart")
                    }
                    .tag(3)

                SettingsPage()
                    .tabItem {
                        Image(systemName: "gear")
                        Text("Settings")
                    }
                    .tag(4)
            }
        }
    }
}
