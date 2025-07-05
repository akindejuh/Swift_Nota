//  HomeView.swift
//  Nota
//
//  Created by Oluwagbemiga Akindeju on 05/07/2025.
//

import SwiftUI

struct LoginView: View {
    @StateObject var loginViewModel = LoginViewModel()
    
    var body: some View {
        VStack {
            HeaderView(
                title: "Nota",
                sub_title: "Ready to journal?",
                background_color: .pink,
                rotation_angle: 15
            )
            Spacer()
            
            Form {
                if !loginViewModel.error_message.isEmpty {
                    Text(loginViewModel.error_message)
                        .foregroundStyle(.red)
                }
                
                TextField("Email address", text: $loginViewModel.email)
                    .autocapitalization(.none)
                    .keyboardType(.emailAddress)
                    .autocorrectionDisabled()
                    .onChange(of: loginViewModel.email) {
                        loginViewModel.clearError()
                    }
                
                SecureField("Password", text: $loginViewModel.password)
                    .onChange(of: loginViewModel.password) {
                        loginViewModel.clearError()
                    }
                
                CustomButtonView(label: "Login", action: {
                    loginViewModel.loginUser()
                })
                .padding(.bottom, 10)
                .padding(.top, 10)
            }
            .offset(y: -20)
            
            VStack {
                Text("Don't have an account?")
                NavigationLink("Create an account", destination: RegisterView())
                    .font(.system(size:15))
                    .foregroundColor(.blue)
            }
            .padding(.bottom, 20)
        }
    }
}

#Preview {
    LoginView()
}
