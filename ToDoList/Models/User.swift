//
//  User.swift
//  ToDoList
//
//  Created by Caleb Mawji on 2023-06-01.
//

import Foundation

struct User: Codable {
    let id: String
    let name: String
    let email: String
    let joined: TimeInterval
}
