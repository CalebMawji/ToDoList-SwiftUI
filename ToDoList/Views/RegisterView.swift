//
//  RegisterView.swift
//  ToDoList
//
//  Created by Caleb Mawji on 2023-06-01.
//

import SwiftUI

struct RegisterView: View {
    @StateObject var viewModel = RegisterViewViewModel()
    
    
    var body: some View {
        VStack {
          HeaderView(title: "Register",
                subtitle: "Sign up",
                angle: -15,
                background: .orange)
            
            Form {
                TextField("Full Name", text: $viewModel.name)
                    .textFieldStyle(DefaultTextFieldStyle())
                    .autocorrectionDisabled()
                TextField("Email Address", text: $viewModel.email)
                    .textFieldStyle(DefaultTextFieldStyle())
                    .autocapitalization(.none)
                    .autocorrectionDisabled()
                TextField("Password", text: $viewModel.password)
                    .textFieldStyle(DefaultTextFieldStyle())
                
                TLButton(
                    title: "Create Account",
                    background: .green
                ) {
                    viewModel.register()
                }
                .padding()
            }
            .offset(y: -50)
            Spacer()
        }
    }
}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}
