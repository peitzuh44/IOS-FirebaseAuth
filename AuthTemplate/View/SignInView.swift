//
//  ContentView.swift
//  AuthTemplate
//
//  Created by Pei-Tzu Huang on 2024/8/28.
//

import SwiftUI
import AuthenticationServices

struct SignInView: View {
    @ObservedObject var authManager: AuthManager

    var body: some View {
        VStack {
            SignInWithAppleButton(
                onRequest: { request in
                    authManager.prepareRequest(request)
                },
                onCompletion: { result in
                    switch result {
                    case .success(let authorization):
                        authManager.signInWithApple(authorization: authorization)
                    case .failure(let error):
                        print("Sign in with Apple failed: \(error.localizedDescription)")
                    }
                }
            )
            .signInWithAppleButtonStyle(.black)
            .frame(width: 280, height: 60)
        }
        .padding()
    }
}

