//
//  LoginViewViewModel.swift
//  ToDoList
//
//  Created by Caleb Mawji on 2023-06-02.
//

import Foundation
import FirebaseAuth

class LoginViewViewModel: ObservableObject {
    @Published var email = ""
    @Published var password = ""
    @Published var errorMessage = ""
   
    init() {}
    
    func login(){
        guard validate() else {
            return
        }
        
        Auth.auth().signIn(withEmail: email, password: password)
    }
   private func validate() -> Bool {
       errorMessage = ""
       guard !email.trimmingCharacters(in: .whitespaces).isEmpty,
             !password.trimmingCharacters(in: .whitespaces).isEmpty else {
                   
                   errorMessage = "Please complete your login"
                   return false
                   
               }
               
               guard email.contains ("@") && email.contains(".") else {
                   errorMessage = "Please enter valid email"
                   return false
               }
        return true
    }
}
