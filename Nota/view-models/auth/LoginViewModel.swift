//
//  LoginViewModel.swift
//  Nota
//
//  Created by Oluwagbemiga Akindeju on 05/07/2025.
//

import Foundation

struct LoginValidationResult {
    let error: String
    let valid: Bool
}

class LoginViewModel: ObservableObject {
    @Published var email: String = "";
    @Published var password: String = "";
    @Published var error_message: String = "";
    
    init () {}
    
    func clearError () {
        error_message = "";
    }
    
    func validate () -> LoginValidationResult {
        guard !email.trimmingCharacters(in: .whitespaces).isEmpty,
              !password.trimmingCharacters(in: .whitespaces).isEmpty else {
            return LoginValidationResult(error: "Invalid credentials!", valid: false);
        }
        
        return LoginValidationResult(error: "", valid: true);
    }
    
    func loginUser () -> Void {
        error_message = "";
        
        let result = validate();
        if !result.valid {
            error_message = result.error;
            return;
        }
        
        
    }
 }
