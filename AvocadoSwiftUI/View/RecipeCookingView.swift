//
//  RecipeCookingView.swift
//  AvocadoSwiftUI
//
//  Created by Rustam Keneev on 19/3/24.
//

import SwiftUI

struct RecipeCookingView: View {
    //MARK: - PROPERTIES
    var recipe: Recipe

    var body: some View {
        HStack(alignment: .center, spacing: 12){
            HStack(alignment: .center, spacing: 2){
                Image(systemName: "person.2")
                Text("Serves: \(recipe.serves)")
            }//: HSTACK
            HStack(alignment: .center, spacing: 2){
                Image(systemName: "clock")
                Text("Prep: \(recipe.preparation)")
            }//: HSTACK
            HStack(alignment: .center, spacing: 2){
                Image(systemName: "flame")
                Text("Cooking: \(recipe.cooking)")
            }//: HSTACK
        }//: HSTACK
    }
}

#Preview {
    RecipeCookingView(recipe: recipeData[0])
        .previewLayout(.fixed(width: 320, height: 60))
}
