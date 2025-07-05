//  HomeView.swift
//  Nota
//
//  Created by Oluwagbemiga Akindeju on 05/07/2025.
//

import SwiftUI

struct RegisterView: View {
    @State var full_name: String = "";
    @State var email: String = "";
    @State var password: String = "";
    
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
                TextField("Full name", text: $full_name)
                TextField("Email address", text: $email)
                SecureField("Password", text: $password)
                
                CustomButtonView(label: "Register", action: {
                    
                }, background_color: .green)
                .padding(.bottom, 10)
                .padding(.top, 10)
            }.offset(y: -50)
        }
    }
}

#Preview {
    RegisterView()
}
