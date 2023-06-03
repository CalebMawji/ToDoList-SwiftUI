//
//  ToDoListItemViewViewModel.swift
//  ToDoList
//
//  Created by Caleb Mawji on 2023-06-02.
//

import FirebaseAuth
import FirebaseFirestore
import Foundation
/// ViewModel for a single to do list item view (each row in item list) 
class ToDoListItemViewViewModel: ObservableObject {
    init() {}
    
    func toggleIsDone(item: ToDoListItem) {
        var itemCopy = item
        itemCopy.setDone(!item.isDone)
        
        guard let uid = Auth.auth().currentUser?.uid else {
            return
        }
        let db = Firestore.firestore()
        db.collection("users")
            .document(uid)
            .collection("to do's")
            .document(itemCopy.id)
            .setData(itemCopy.asDictionary())
    }

}
