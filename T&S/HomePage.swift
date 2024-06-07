//
//  ContentView.swift
//  T&S
//
//  Created by  Adam-James  Cooper on 2024-06-03.
//

import SwiftUI


struct HomePage: View {
    
    // MARK: Stored properties
    
    // MARK: Computed Properties
    @State var scrollView = 0
    
    
    var body: some View {
        NavigationView {
            VStack {
                // Home Section
                HomeSection()
                
                // Shop Section
                ShopSection()
                
                // Donate Section
//                DonateSection()
//                
//                // About Section
//                AboutSection()

            }
            
        }
    }
}

struct HomeSection: View {
    var body: some View {
        VStack {
            Text("Welcome to LCS Thrift Store")
                .font(.title)
                .padding()

            Text("Find great deals on pre-loved items and support your community.")
                .padding()
        }
        .background(Color.green.opacity(1))
    }
}




struct ShopSection: View {
    var body: some View {

        VStack {
            
            VStack {
                VStack {
                    Text("LCS Thift Store")
                        .font(.title2)
                       
                    Text("Shop") }
                .font(.title2)
               
                ScrollView(.horizontal) {
                    HStack {
                        VStack {
                            ShopItem(imageName: "item1", title: "Item 1", price: "$10.00")
                            ShopItem(imageName: "item2", title: "Item 2", price: "$15.00")
                        }
                        VStack {
                            ShopItem(imageName: "item3", title: "Item 3", price: "$10.00")
                            ShopItem(imageName: "item4", title: "Item 4", price: "$20.00")
                        }
                        VStack {
                            ShopItem(imageName: "item5", title: "Item 5", price: "$5.00")
                            ShopItem(imageName: "item6", title: "Item 6", price: "$10.00")
                        }
                        VStack {
                            ShopItem(imageName: "item7", title: "Item 7", price: "$10.00")
                            ShopItem(imageName: "item8", title: "Item 8", price: "$10.00")
                        }
                    }
                    
                }
            }
        }
    }
}
    



struct DonateSection: View {
    var body: some View {
        VStack {
            Text("Donate")
                .font(.title2)
                .padding(.top, 2)
            Text("Have items you no longer need? Donate them to help others and keep our campus green.")
                .padding()
        }
    }
}

struct AboutSection: View {
    var body: some View {
        VStack {
            Text("About Us")
                .font(.title2)
                .padding(.top, 2)
            Text("We are a student-run thrift store dedicated to promoting sustainability and helping students find affordable items.")
                .padding()
        }
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
        Text("Settings")
            .tabItem {
                Image(systemName: "gear")
                Text("Settings")
            }
            .tag(4)
        
        
        
    }
}


