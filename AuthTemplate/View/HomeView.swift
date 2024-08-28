//
//  HomeView.swift
//  AuthTemplate
//
//  Created by Pei-Tzu Huang on 2024/8/28.
//

import SwiftUI

struct HomeView: View {
    @ObservedObject var authManager: AuthManager

    var body: some View {
        VStack {
            Text("Welcome!")
            Button(action: authManager.signOut) {
                Text("Sign Out")
                    .foregroundColor(.red)
            }
            .padding()
            
            Button(action: authManager.deleteAccount) {
                Text("Delete Account")
                    .foregroundColor(.red)
            }
        }
        .padding()
    }
}
