//
//  ContentView.swift
//  RepositoryView
//
//  Created by Macbook on 03/05/2025.
//

import SwiftUI

struct RepositoryView: View {
    
   @StateObject var model: RepositoryViewModel
    var body: some View {
        VStack {
            List {
                ForEach(self.model.respositoryListModel, id: \.self) { model in
                
                    RepositoryCardView(model: model)
                        .listRowSeparator(.hidden)
                }
                
            }
            .listStyle(.plain)
            
        }
        .padding()
        .onAppear {
            self.model.fetchRespositoryList()
        }
    }
    
}

#Preview {
    RepositoryView(model: RepositoryViewModel())
}

struct RepositoryCardView: View {
    var model: RepositoryViewModel.RespositoryModel
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Text("Repository Name:")
                Text(model.repoName)
            }
            
            HStack {
                Text("Total Stars:")
                Text("\(model.totalStars)")
            }
            
            HStack {
                Text("Language:")
                Text(model.language)
            }
            
            HStack {
                Text("Description:")
                Text(model.description)
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
