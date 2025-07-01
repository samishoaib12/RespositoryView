//
//  ContentView.swift
//  RepositoryView
//
//  Created by Macbook on 03/05/2025.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            List {
                RepositoryCardView()
                    .listRowSeparator(.hidden)
                RepositoryCardView()
                    .listRowSeparator(.hidden)
                RepositoryCardView()
                    .listRowSeparator(.hidden)
                RepositoryCardView()
                    .listRowSeparator(.hidden)
                RepositoryCardView()
                    .listRowSeparator(.hidden)
                
                
            }
            .listStyle(.plain)
            
        }
        .padding()
    }
}

#Preview {
    ContentView()
}

struct RepositoryCardView: View {
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Text("Repository Name:")
                Text("My Repo")
            }
            
            HStack {
                Text("Total Stars:")
                Text("600")
            }
            
            HStack {
                Text("Language:")
                Text("Swift")
            }
            
            HStack {
                Text("Description:")
                Text("My description")
            }
            
        }
        .frame(maxWidth: .infinity)
        .padding()
        .background(
            RoundedRectangle(cornerRadius: 10)
                .fill(Color(.systemGray6))
        )
    }
}
