//
//  RecipeModel.swift
//  AvocadoSwiftUI
//
//  Created by Rustam Keneev on 18/3/24.
//

import SwiftUI

//MARK: - RECIPE MODEL
struct Recipe: Identifiable {
    var id = UUID()
    var title: String
    var headline: String
    var image: String
    var rating: Int
    var serves: Int
    var preparation: Int
    var cooking: Int
    var instructions: [String]
    var ingredients: [String]
}


