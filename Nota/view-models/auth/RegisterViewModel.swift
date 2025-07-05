//
//  RegisterViewModel.swift
//  Nota
//
//  Created by Oluwagbemiga Akindeju on 05/07/2025.
//

import Foundation

struct RegisterValidationResult {
    let error: String
    let valid: Bool
}

class RegisterViewModel: ObservableObject {
    @Published var full_name: String = "";
    @Published var email: String = "";
    @Published var password: String = "";
    @Published var error_message: String = "";
    
    init () {}
    
    func clearError () {
        error_message = "";
    }
    
    func validate () -> RegisterValidationResult {
        guard !full_name.trimmingCharacters(in: .whitespaces).isEmpty,
              !email.trimmingCharacters(in: .whitespaces).isEmpty,
              !password.trimmingCharacters(in: .whitespaces).isEmpty else {
            return RegisterValidationResult(error: "Please fill in all missing fields!", valid: false);
        }
        
        return RegisterValidationResult(error: "", valid: true);
    }
    
    func registerUser () -> Void {
        error_message = "";
        
        let result = validate();
        if !result.valid {
            error_message = result.error;
            return;
        }
        
        
    }
 }
