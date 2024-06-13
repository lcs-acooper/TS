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
// SearchItem model now includes an ItemType enum to categorize items.
struct SearchItem: Identifiable {
    // MARK: Stored properties
    let id = UUID()
    let imageName: String
    let title: String
    let price: Double
    let type: ItemType
}

let exampleItems = [
    SearchItem(imageName: "tshirt", title: "Graphic T-Shirt", price: 19.99, type: .resell),
    SearchItem(imageName: "jeans", title: "Slim Fit Jeans", price: 49.99, type: .thrift),
    SearchItem(imageName: "jacket", title: "Leather Jacket", price: 129.99, type: .resell),
    SearchItem(imageName: "sneakers", title: "Running Sneakers", price: 89.99, type: .student),
    SearchItem(imageName: "hat", title: "Baseball Cap", price: 24.99, type: .thrift),
    SearchItem(imageName: "notebook", title: "Notebook", price: 5.99, type: .student)
]

