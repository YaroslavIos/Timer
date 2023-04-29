//
//  UserSettings.swift
//  Timer
//
//  Created by Ярослав Любиченко on 26.4.2023.
//

import Foundation

final class UserSettings: ObservableObject {
    @Published var isLoggedIn = false
    var name = ""
}
