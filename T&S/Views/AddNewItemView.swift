//
//  AddNewItemView.swift
//  T&S
//
//  Created by  Adam-James  Cooper on 2024-06-13.
//

import SwiftUI

struct AddNewItemView: View {
    
    @State private var itemName: String = ""
    @State private var description: String = ""
    @State private var contactSeller: String = ""
    @State private var sellerName: String = ""
    @State private var price: String = ""
    @State private var selectedItemType: ItemType = .student
    
    // Allow us to dismiss form
    @Binding var dismissSheet: Bool
    
    // Completion handler to pass back the new item
    var onSave: (SearchItem) -> Void
    
    var body: some View {
        NavigationView {
            VStack {
                Form {
                    Section {
                        TextField("Product", text: $itemName)
                        TextField("Price", text: $price)
                            .keyboardType(.decimalPad)
                        TextField("Seller Name", text: $sellerName)
                        TextField("Seller Contact", text: $contactSeller)
                        
                        Picker("Item Type", selection: $selectedItemType) {
                            Text("Student").tag(ItemType.student)
                            Text("Thrift").tag(ItemType.thrift)
                            Text("Resell").tag(ItemType.resell)
                        }
                        .pickerStyle(SegmentedPickerStyle())
                    }
                    
                    Section(header: Text("Description")) {
                        TextEditor(text: $description)
                            .frame(height: 200)
                    }
                }
                .navigationBarTitle("Add New Item", displayMode: .inline)
                .navigationBarItems(trailing: Button("Post") {
                    // Convert price to Double
                    let itemPrice = Double(price) ?? 0.0
                    // Create new SearchItem
                    let newItem = SearchItem(imageName: "placeholder", title: itemName, price: itemPrice, type: selectedItemType, sellerName: sellerName, contactSeller: contactSeller)
                    // Pass back the new item
                    onSave(newItem)
                    // Dismiss the sheet
                    dismissSheet = false
                })
            }
        }
    }
}

#Preview {
    AddNewItemView(dismissSheet: .constant(true)) { newItem in }
}
