//
//  SettingsView.swift
//  AvocadoSwiftUI
//
//  Created by Rustam Keneev on 17/3/24.
//

import SwiftUI

struct SettingsView: View {
    //MARK: - PROPERTIES
    @State private var enableNotification: Bool = true
    @State private var backgroundRefresh: Bool = false

    var body: some View {
        VStack(alignment: .center, spacing: 0) {
            //MARK: - HEADER
            

            VStack(alignment: .center, spacing: 6) {
                Image("avocado")
                    .resizable()
                    .scaledToFit()
                    .padding(.top)
                    .frame(width: 100, height: 100, alignment: .center)
                    .shadow(color: Color("ColorBlackTransparentLight"), radius: 8, x: 0, y: 4)
                Text("Avocados".uppercased())
                    .font(.system(.title, design: .serif))
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                .foregroundColor(Color("ColorGreenAdaptive"))
            }//: VSTACK
            .padding()
            Form{
                //MARK: - SECTION #1
                Section(header: Text("General Settings")){
                    Toggle(isOn: $enableNotification){
                        Text("Enable notification")
                    }
                    Toggle(isOn: $backgroundRefresh){
                        Text("Background refresh")
                    }
                }//: SECTION
                
                //MARK: - SECTION #2
                Section(header: Text("Application")){
                    if enableNotification {
                        HStack{
                            Text("Product")
                                .foregroundColor(Color.gray)
                            Spacer()
                            Text("Avocado Recipes")
                        }
                        HStack{
                            Text("Compatibilty")
                                .foregroundColor(Color.gray)
                            Spacer()
                            Text("IPhone & IPad")
                        }//: HSTACK
                        HStack{
                            Text("Developer")
                                .foregroundColor(Color.gray)
                            Spacer()
                            Text("Rustam Keneev")
                        }//: HSTACK
                        HStack{
                            Text("Desuigner")
                                .foregroundColor(Color.gray)
                            Spacer()
                            Text("Rustam Keneev")
                        }//: HSTACK
                        HStack{
                            Text("GitHub")
                                .foregroundColor(Color.gray)
                            Spacer()
                            Text("RustamKeneev")
                        }//: HSTACK
                        HStack{
                            Text("Version")
                                .foregroundColor(Color.gray)
                            Spacer()
                            Text("1.0.0")
                        }//: HSTACK
                    } else {
                        HStack{
                            Text("Personal message")
                                .foregroundColor(Color.gray)
                            Spacer()
                            Text("Welcome client")
                        }
                    }//: HSTACK
                }//: SECTION
            }
        }//: VSTACK
        .frame(maxWidth: 640)
    }
}

#Preview {
    SettingsView()
}
