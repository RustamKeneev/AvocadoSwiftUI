//
//  RipeningStagesView.swift
//  AvocadoSwiftUI
//
//  Created by Rustam Keneev on 17/3/24.
//

import SwiftUI

struct RipeningStagesView: View {
    //MARK: - PROPERTIES
    var ripeningStages: [Ripening] = ripeningData

    var body: some View {
        ScrollView(.horizontal, showsIndicators: false){
            VStack{
                Spacer()
                HStack(alignment: .center, spacing: 26){
                    ForEach(ripeningStages){ item in
                        RipeningView(ripening: item)
                    }
                }
                .padding(.vertical)
                .padding(.horizontal, 26)
                Spacer()
            }//: VSTACK
        }//: SCROLL
        .edgesIgnoringSafeArea(.all)
    }
}

#Preview {
    RipeningStagesView(ripeningStages: ripeningData)
}
