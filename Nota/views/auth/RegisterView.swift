//  HomeView.swift
//  Nota
//
//  Created by Oluwagbemiga Akindeju on 05/07/2025.
//

import SwiftUI

struct RegisterView: View {
    @StateObject var registerViewModel = RegisterViewModel();
    
    var body: some View {
        VStack {
            HeaderView(
                title: "Register",
                sub_title: "Let's get you started",
                background_color: .orange,
                rotation_angle: -15
            )
            Spacer()
            
            Form {
                if !registerViewModel.error_message.isEmpty {
                    Text(registerViewModel.error_message)
                        .foregroundStyle(.red)
                }
                
                TextField("Full name", text: $registerViewModel.full_name)
                    .autocorrectionDisabled()
                    .onChange(of: registerViewModel.full_name) {
                        registerViewModel.clearError()
                    }
                
                TextField("Email address", text: $registerViewModel.email)
                    .autocorrectionDisabled()
                    .autocapitalization(.none)
                    .keyboardType(.emailAddress)
                    .onChange(of: registerViewModel.email) {
                        registerViewModel.clearError()
                    }
                
                SecureField("Password", text: $registerViewModel.password)
                    .onChange(of: registerViewModel.password) {
                        registerViewModel.clearError()
                    }
                
                CustomButtonView(label: "Register", action: {
                    registerViewModel.registerUser()
                }, background_color: .green)
                .padding(.bottom, 10)
                .padding(.top, 10)
            }
            .offset(y: -50)
        }
    }
}

#Preview {
    RegisterView()
}
