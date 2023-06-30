//
//  searchPage.swift
//  explorioApp
//
//  Created by Scholar on 6/28/23.
//

import SwiftUI

struct searchPage: View {
    let names = ["Mumbai, India", "Miami, USA", "Mexico City, Mexico", "Moscow, Russia"]
        @State private var searchText = ""

        var body: some View {
            NavigationStack {
                List {
                    ForEach(searchResults, id: \.self) { name in
                        NavigationLink {
                            Text(name)
                        } label: {
                            Text(name)
                        }
                    }
                }
                .navigationTitle("Search Location")
            }
            .searchable(text: $searchText)
        }

        var searchResults: [String] {
            if searchText.isEmpty {
                return names
            } else {
                return names.filter { $0.contains(searchText) }
            }
        }
    }

struct searchPage_Previews: PreviewProvider {
    static var previews: some View {
        searchPage()
    }
}
