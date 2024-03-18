//
//  AppView.swift
//  AvocadoSwiftUI
//
//  Created by Rustam Keneev on 17/3/24.
//

import SwiftUI

struct AppView: View {
    var body: some View {
        TabView{
            AvocadoView()
                .tabItem({
                    Image("tabicon-branch")
                    Text("Avocados")
                })
            ContentView()
                .tabItem({
                    Image("tabicon-book")
                    Text("Recipies")
                })
            RipeningStagesView()
                .tabItem({
                    Image("tabicon-avocado")
                    Text("Ripening")
                })
            SettingsView()
                .tabItem({
                    Image("tabicon-settings")
                    Text("Settings")
                })
        }
//        .edgesIgnoringSafeArea(.top)
        .accentColor(Color.primary)
    }
}

#Preview {
    AppView()
}
