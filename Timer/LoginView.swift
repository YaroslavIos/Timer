//
//  LoginView.swift
//  Timer
//
//  Created by Ярослав Любиченко on 26.4.2023.
//

import SwiftUI

struct LoginView: View {
    @State private var name = ""
    @EnvironmentObject private var userSettings: UserSettings
    @State private var isButtonDisabled = true
    
    var body: some View {
        VStack {
            HStack {
                TextField("Enter your name", text: $name)
                    .multilineTextAlignment(.center)
                    .onChange(of: name) { name in
                        isButtonDisabled = name.count < 3
                    }
                Text("\(name.count)")
                    .foregroundColor(name.count >= 3 ? Color.green : Color.red)
            }
            Button(action: login) {
                HStack {
                    Image(systemName: "checkmark.circle")
                    Text("Ok")
                }
            }
            .disabled(isButtonDisabled)
        }
        .padding()
        .onAppear {
            name = UserDefaults.standard.string(forKey: "name") ?? ""
        }
    }
    
    private func login() {
        if !name.isEmpty || name.count >= 3 {
            userSettings.name = name
            userSettings.isLoggedIn.toggle()
            UserDefaults.standard.set(name, forKey: "name")
            }
        }
    }

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
