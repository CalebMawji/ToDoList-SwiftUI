//
//  ToDoListViewViewModel.swift
//  ToDoList
//
//  Created by Caleb Mawji on 2023-06-01.
//
import FirebaseFirestore
import Foundation
/// ViewModel for list of items
/// Primary tab
class ToDoListViewViewModel: ObservableObject {
    @Published var showingNewItemView = false
    
    private let userId: String
    
    init(userId: String) {
        self.userId = userId
    }
    /// delete to do list item
    func delete(id: String) {
        let db = Firestore.firestore()
        
        db.collection("users")
            .document(userId)
            .collection("to do's")
            .document(id)
            .delete()
        
        
    }
}
