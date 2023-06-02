//
//  LoginView.swift
//  ToDoList
//
//  Created by Caleb Mawji on 2023-06-01.
//

import SwiftUI

struct LoginView: View {
    
@StateObject var viewModel = LoginViewViewModel()
    
    var body: some View {
        NavigationView {
            VStack {
                HeaderView(title: "To Do list", subtitle: "By Caleb Mawji", angle: 15, background: .pink)
                
                
                Form {
                    if !viewModel.errorMessage.isEmpty {
                        Text(viewModel.errorMessage)
                            .foregroundColor(Color.red)
                }
                    TextField("Email Address", text: $viewModel.email)
                        .textFieldStyle(DefaultTextFieldStyle())
                        .autocapitalization(.none)
                    
                    SecureField("Password", text: $viewModel.password)
                        .textFieldStyle(DefaultTextFieldStyle())
                    
                    TLButton(title: "Log in", background: .blue) {
                        viewModel.login()
                    }
                    .padding()
                }
                .offset(y: -50)
                
                
                //create account
                VStack {
                    Text("New around here?")
                  NavigationLink("Create An Account", destination: RegisterView())
                    }
                    .padding(.bottom, 50)
                    
                    Spacer()
                }
            }
        }
    }
        struct LoginView_Previews: PreviewProvider {
            static var previews: some View {
                LoginView()
            }
        }
    
