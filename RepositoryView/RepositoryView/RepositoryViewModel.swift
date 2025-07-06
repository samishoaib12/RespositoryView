//
//  RepositoryViewModel.swift
//  RepositoryView
//
//  Created by Macbook on 06/07/2025.
//

import Combine

class RepositoryViewModel: ObservableObject {

   @Published var respositoryListModel: [RespositoryModel] = []
    
    struct RespositoryModel: Hashable {
        var repoName: String
        var totalStars: Int
        var language: String
        var description: String
    }
    
    func fetchRespositoryList() {
        let model1 =  RespositoryModel(repoName: "My Repo", totalStars: 400, language: "Swift", description: "This is for iOS application")
        let model2 =  RespositoryModel(repoName: "My another Repo", totalStars: 450, language: "Kotlin", description: "This is for android application")
        let model3 =  RespositoryModel(repoName: "My website Repo", totalStars: 500, language: "PHP", description: "This is for backend Api")
        
        respositoryListModel.append(model1)
        respositoryListModel.append(model2)
        respositoryListModel.append(model3)
        
    }
    
}
