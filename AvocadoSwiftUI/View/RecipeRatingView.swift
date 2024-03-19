//
//  RecipeRatingView.swift
//  AvocadoSwiftUI
//
//  Created by Rustam Keneev on 19/3/24.
//

import SwiftUI

struct RecipeRatingView: View {
    //MARK: - PROPERTIES
    var recipe: Recipe

    var body: some View {
        //RATING
        HStack(alignment: .center, spacing: 5) {
            ForEach(1...recipe.rating, id: \.self) { item in
                Image(systemName: "star.fill")
                    .font(.body)
                .foregroundColor(Color.yellow)
            }
        }
    }
}

#Preview {
    RecipeRatingView(recipe: recipeData[0])
        .previewLayout(.fixed(width: 320, height: 60))
}
