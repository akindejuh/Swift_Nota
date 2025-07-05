//  HomeView.swift
//  Nota
//
//  Created by Oluwagbemiga Akindeju on 05/07/2025.
//

import SwiftUI

struct LoginView: View {
    @State var email = "";
    @State var password = "";
    
    var body: some View {
        NavigationView {
            VStack {
                HeaderView(
                    title: "Nota",
                    sub_title: "Ready to journal?",
                    background_color: .pink,
                    rotation_angle: 15
                )
                Spacer()
                
                Form {
                    TextField("Email address", text: $email)
                    SecureField("Password", text: $password)
                    
                    CustomButtonView(label: "Login", action: {
                        
                    })
                    .padding(.bottom, 10)
                    .padding(.top, 10)
                }.offset(y: -50)
                
                VStack {
                    Text("Don't have an account?")
                    NavigationLink("Create an account", destination: RegisterView())
                        .font(.system(size:16))
                }
                .padding(.top, 5)
                .padding(.bottom, 20)
            }
        }
    }
}

#Preview {
    LoginView()
}
