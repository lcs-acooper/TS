//
//  ItemDetailView.swift
//  T&S
//
//  Created by  Adam-James  Cooper on 2024-06-13.
//

import SwiftUI

struct ItemDetailView: View {
    let item: SearchItem
    
    var body: some View {
        VStack {
            Image(item.imageName)
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 200)
                .padding()
            
            Text(item.title)
                .font(.title)
                .padding(.bottom, 5)
            
            Text("Price: $\(item.price, specifier: "%.2f")")
                .font(.title2)
                .padding(.bottom, 20)
            
            Text("Contact Seller")
                .font(.headline)
                .padding(.bottom, 5)
            
            Text("Seller: \(item.sellerName)")
                .font(.subheadline)
            
            Text("Contact: \(item.contactSeller)")
                .font(.subheadline)
        }
        .padding()
        .navigationTitle("Item Details")
    }
}

#Preview {
    ItemDetailView(item: exampleItems[3])
}

