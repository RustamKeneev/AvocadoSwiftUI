//
//  HeaderView.swift
//  AvocadoSwiftUI
//
//  Created by Rustam Keneev on 17/3/24.
//

import SwiftUI

struct HeaderView: View {
    //MARK: - PROPERTIES
    @State private var showHeadline: Bool = false
    var sliderAnimation: Animation{
        Animation.spring(response: 1.5, dampingFraction: 0.5, blendDuration: 0.5)
            .speed(1)
            .delay(0.25)
    }

    var body: some View {
        ZStack {
            Image("avocado-slice-1")
                .resizable()
                .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
            HStack(alignment: .top, spacing: 0) {
                Rectangle()
                    .fill(Color("ColorGreenLight"))
                    .frame(width: 4)
                VStack(alignment: .leading, spacing: 6) {
                    Text("Avocado")
                        .font(.system(.title, design: .serif))
                        .fontWeight(.bold)
                        .foregroundColor(Color.white)
                        .shadow(radius: 3)
                    Text("Avocados are a powerhouse ingredient at any meal for anyone.")
                        .font(.footnote)
                        .lineLimit(/*@START_MENU_TOKEN@*/2/*@END_MENU_TOKEN@*/)
                        .multilineTextAlignment(.leading)
                        .foregroundColor(Color.white)
                        .shadow(radius: 3)
                }//: VSTACK
                .padding(.vertical, 0)
                .padding(.horizontal, 20)
                .frame(width: 282, height: 106)
            .background(Color("ColorBlackTransparentLight"))
            }
            .frame(width: 286, height: 106, alignment: .center)
            .offset(x: -66, y: showHeadline ? 76 : 220)
            .animation(sliderAnimation)
            .onAppear(perform: {
                self.showHeadline.toggle()
            })
        }//: ZSTACK
        .frame(width: 480, height: 320, alignment: .center)
    }
}

#Preview {
    HeaderView()
        .previewLayout(.sizeThatFits)
        .environment(\.colorScheme, .dark)
}
