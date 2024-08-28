//
//  ContentView.swift
//  AuthTemplate
//
//  Created by Pei-Tzu Huang on 2024/8/28.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var authManager = AuthManager()

    var body: some View {
        switch authManager.authState {
        case .signedIn:
            HomeView(authManager: authManager)
        case .signedOut:
            SignInView(authManager: authManager)
        }
    }
}

