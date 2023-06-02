//
//  ContentView.swift
//  ToDoList
//
//  Created by Caleb Mawji on 2023-06-01.
//

import SwiftUI

struct MainView: View {
    @StateObject var viewModel = MainViewViewModel()
    
    
    var body: some View {
            if viewModel.isSignedIn, !viewModel.currentUserId.isEmpty {
                ToDoListView()
            } else {
                LoginView()
            }
        }
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            MainView()
        }
    }
