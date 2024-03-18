//
//  ContentView.swift
//  AvocadoSwiftUI
//
//  Created by Rustam Keneev on 16/3/24.
//

import SwiftUI

struct ContentView: View {
    //MARK: - PROPERTIES
    var headers: [Header] = headerData

    var body: some View {
        ScrollView(.vertical, showsIndicators: false){
            VStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 20) {
                //MARK: - HEADER
                ScrollView(.horizontal, showsIndicators: false){
                    HStack(alignment: .top, spacing: 0) {
                        ForEach(headers) { item in
                            HeaderView(header: item)
                        }
                    }//: HSTACK
                }

                //MARK: - FOOTER
                VStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 20){
                    Text("All about avocados")
                        .font(.system(.title, design: .serif))
                        .fontWeight(.bold)
                        .foregroundColor(Color("ColorGreenAdaptive"))
                    .padding(8)
                    Text("Everything you wanted to know avocados but were too afraid to ask.")
                        .font(.system(.body, design: .serif))
                        .multilineTextAlignment(.center)
                        .foregroundColor(Color.gray)
                }//: VSTACK
                .frame(maxWidth: 640)
                .padding()
                .padding(.bottom, 80)
            }//: VSTACK
        }//: SCROLL
        .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
        .padding(0)
//        AppView()
    }
}

#Preview {
    ContentView(headers: headerData)
}
