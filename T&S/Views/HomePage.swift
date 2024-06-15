//
//  ContentView.swift
//  T&S
//
//  Created by Adam-James Cooper on 2024-06-03.
//

import SwiftUI

struct HomePage: View {
    var body: some View {
        NavigationView {
            VStack {
                HomeSection()
                ShopSection()
            }
            .padding()
        }
    }
}

struct HomeSection: View {
    var body: some View {
        VStack {
            Text("Welcome to T&S Store")
                .font(.title)
                .padding(.bottom, 5)
            Text("Find great deals on pre-loved items and support your community.")
        }
        .padding()
        .background(Color.green)
        .cornerRadius(10)
    }
}

struct ShopSection: View {
    var body: some View {
        VStack(alignment: .center) {
            Text("LCS T&S Store")
                .font(.title2)
                .padding(.bottom, 5)
            Text("Recently Added Items")
                .font(.title)

            ScrollView(.horizontal) {
                HStack(spacing: 15) {
                    VStack {
                        ShopItem(imageName: "item1", title: "Item 1", price: 10.00)
                        ShopItem(imageName: "item2", title: "Item 2", price: 15.00)
                    }
                    VStack {
                        ShopItem(imageName: "item3", title: "Item 3", price: 20.00)
                        ShopItem(imageName: "item4", title: "Item 4", price: 50.00)
                    }
                    VStack {
                        ShopItem(imageName: "item5", title: "Item 5", price: 5.00)
                        ShopItem(imageName: "item6", title: "Item 6", price: 10.00)
                    }
                    VStack {
                        ShopItem(imageName: "item7", title: "Item 7", price: 20.00)
                        ShopItem(imageName: "item8", title: "Item 8", price: 15.00)
                    }
                }
            }
            .padding()
            .background(Color.gray.opacity(0.2))
            .cornerRadius(10)
        }
        .padding(.top, 10)
    }
}



#Preview {
    TabView(selection: Binding.constant(1)) {
        HomePage()
            .tabItem {
                Image(systemName: "house")
                Text("Home")
            }
            .tag(1)

    SearchPage()
            .tabItem {
                Image(systemName: "magnifyingglass")
                Text("Search")
            }
            .tag(2)

        SettingsPage()
            .tabItem {
                Image(systemName: "gear")
                Text("Settings")
            }
            .tag(3)
    }
}
