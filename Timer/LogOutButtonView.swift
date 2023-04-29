//
//  LogOutButtonView.swift
//  Timer
//
//  Created by Ярослав Любиченко on 29.4.2023.
//

import SwiftUI

struct LogOutButtonView: View {
    @EnvironmentObject var userSettings: UserSettings
    
    var body: some View {
        
        Button(action: { userSettings.isLoggedIn = false }) {
            Text("LogOut")
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(.white)
        }
        .frame(width: 200, height: 60)
        .background(.blue)
        .cornerRadius(20)
        .overlay(
            RoundedRectangle(cornerRadius: 20)
                .stroke(.black, lineWidth: 4)
        )
    }
}

struct LogOutButtonView_Previews: PreviewProvider {
    static var previews: some View {
        LogOutButtonView()
    }
}
