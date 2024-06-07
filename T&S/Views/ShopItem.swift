//
//  ShopItem.swift
//  T&S
//
//  Created by  Adam-James  Cooper on 2024-06-07.
//

import SwiftUI

struct ShopItem: View {
    var imageName: String
    var title: String
    var price: String
    
    var body: some View {
        VStack {
            Image(imageName)
                .resizable()
                .frame(width: 100, height: 100)
                .cornerRadius(8)
            Text(title)
                .font(.headline)
            Text(price)
                .font(.subheadline)
                .foregroundColor(.gray)
        }
        .padding()
        .background(Color.white)
        .cornerRadius(8)
        .shadow(radius: 2)
    }
}

#Preview {
    ShopItem(imageName: "image1", title: "image1", price: "15:00")
}
