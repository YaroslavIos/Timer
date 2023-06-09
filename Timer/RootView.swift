//
//  RootView.swift
//  Timer
//
//  Created by Ярослав Любиченко on 26.4.2023.
//

import SwiftUI

struct RootView: View {
    @StateObject private var userSettings = UserSettings()
    
    var body: some View {
        Group {
            if userSettings.isLoggedIn {
                ContentView()
            } else {
                LoginView()
            }
        }.environmentObject(userSettings)
    }
}

struct RootView_Previews: PreviewProvider {
    static var previews: some View {
        RootView()
    }
}
