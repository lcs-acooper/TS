//
//  SearchItem.swift
//  T&S
//
//  Created by  Adam-James  Cooper on 2024-06-12.
//

import Foundation

enum ItemType {
    case student
    case thrift
    case resell
}

struct SearchItem: Identifiable {
    let id = UUID()
    let imageName: String
    let title: String
    let price: Double
    let type: ItemType
    let sellerName: String
    let contactSeller: String
}

    // ChatGTP examples 
let exampleItems = [
    SearchItem(imageName: "tshirt", title: "Graphic T-Shirt", price: 19.99, type: .resell, sellerName: "Alice", contactSeller: "alice@example.com"),
    SearchItem(imageName: "jeans", title: "Slim Fit Jeans", price: 0, type: .thrift, sellerName: "Bob", contactSeller: "bob@example.com"),
    SearchItem(imageName: "jacket", title: "Leather Jacket", price: 129.99, type: .resell, sellerName: "Charlie", contactSeller: "charlie@example.com"),
    SearchItem(imageName: "sneakers", title: "Running Sneakers", price: 89.99, type: .student, sellerName: "David", contactSeller: "david@example.com"),
    SearchItem(imageName: "hat", title: "Baseball Cap", price: 0, type: .thrift, sellerName: "Eve", contactSeller: "eve@example.com"),
    SearchItem(imageName: "notebook", title: "Notebook", price: 5.99, type: .student, sellerName: "Frank", contactSeller: "frank@example.com")
]

