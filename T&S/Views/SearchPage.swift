//
//  SearchPage.swift
//  T&S
//
//  Created by  Adam-James  Cooper on 2024-06-09.
//

import SwiftUI

struct SearchPage: View {
    
    // MARK: Stored properties
    @State private var selectedPresentationType: Int = 1
    
    // Source of the truth for the search page
    @State private var search: [SearchItem] = exampleItems
    
    // Holds the search text provided by the user
    @State private var searchText: String = ""
    
    
    
    
    // MARK: Computed properties
    // The List now displays items according to the selected category and search text.
        var filteredItems: [SearchItem] {
            let filtered = filter(search, on: searchText)
            switch selectedPresentationType {
            case 1:
                return filtered.filter { $0.type == .student }
            case 2:
                return filtered.filter { $0.type == .thrift }
            case 3:
                return filtered.filter { $0.type == .resell }
            default:
                return filtered
            }
        }
        
        var body: some View {
            NavigationStack {
                VStack {
                    
                    Picker("Presenting",
                           selection: $selectedPresentationType) {
                        Text("Student items").tag(1)
                        Text("Thrift Clothes").tag(2)
                        Text("Resell Clothes").tag(3)
                    }
                    .pickerStyle(.segmented)
                    .padding()
                    
                    List(filteredItems) { searchItem in
                    NavigationLink(destination: ItemDetailView(item: searchItem)) {
                    ShopItem(imageName: searchItem.imageName, title: searchItem.title, price: searchItem.price)
                        }
                    }
                .listStyle(.plain)
                    
                }
                .navigationTitle("Search Page")
                .searchable(text: $searchText)
            }
        }
    
    
    
    // MARK: Functions
        func filter(_ search: [SearchItem], on providedText: String) -> [SearchItem] {
            if providedText.isEmpty {
                return search
            } else {
                
                // make an empty array of SearchItems
                var filteredSearch: [SearchItem] = []

                // iterate over existing SearchItems
                for searchItem in search {
                    if searchItem.title.lowercased().contains(providedText.lowercased()) {
                        filteredSearch.append(searchItem)
                    }
                }
                
                // Return the list of Searchitems that contain the provided text
                return filteredSearch
            }
        }
    }

#Preview {
    SearchPage()
}
