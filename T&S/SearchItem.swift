//
//  SearchItem.swift
//  T&S
//
//  Created by  Adam-James  Cooper on 2024-06-12.
//

import Foundation

struct SearchItem: Identifiable {
    // MARK: Stored properties
    let id = UUID()
    let imageName: String
    let title: String
    let price: Double
}

let exampleItems = [
    SearchItem(imageName: "laptop", title: "Apple MacBook Pro", price: 1299.99),
    SearchItem(imageName: "phone", title: "Samsung Galaxy S21", price: 799.99),
    SearchItem(imageName: "headphones", title: "Sony WH-1000XM4", price: 349.99),
]
