//
//  FactsView.swift
//  AvocadoSwiftUI
//
//  Created by Rustam Keneev on 18/3/24.
//

import SwiftUI

struct FactsView: View {
    //MARK: - PROPERTIES
    var fact: Fact

    var body: some View {
        ZStack {
            Text(fact.content)
                .padding(.leading, 54)
                .padding(.trailing, 10)
                .padding(.vertical, 4)
                .frame(width: 300, height: 136, alignment: .center)
                .background(LinearGradient(gradient: Gradient(colors: [Color("ColorGreenMedium"), Color("ColorGreenLight")]), startPoint: .leading, endPoint: .trailing))
                .cornerRadius(12)
                .lineLimit(6)
                .multilineTextAlignment(.leading)
                .font(.footnote)
            .foregroundColor(Color.white)
            Image(fact.image)
                .resizable()
                .frame(width: 66, height: 66, alignment: .center)
                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                .offset(x: -150)
                .background(
                    Circle()
                        .fill(Color.white)
                        .frame(width: 74, height: 74, alignment: .center)
                        .offset(x: -150)
                )
                .background(
                    Circle()
                        .fill(LinearGradient(gradient: Gradient(colors: [Color("ColorGreenMedium"), Color("ColorGreenLight")]), startPoint: .trailing, endPoint: .leading))
                        .frame(width: 82, height: 82, alignment: .center)
                        .offset(x: -150)
                )
                .background(
                    Circle()
                        .fill(Color("ColorAppearanceAdaptive"))
                        .frame(width: 90, height: 90, alignment: .center)
                        .offset(x: -150)
                )
        }//: ZSTACK
    }
}

#Preview {
    FactsView(fact: factData[0])
        .previewLayout(.fixed(width: 400, height: 220))
}
