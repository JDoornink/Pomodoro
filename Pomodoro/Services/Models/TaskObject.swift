//
//  ArticleObject.swift
//  Pomodoro
//
//  Created by JD on 6/14/20.
//  Copyright © 2020 JDoor. All rights reserved.
//

import Foundation

struct TaskObject: Codable {
    var id: String
    var text: String
    var completed: Bool
    
    enum CodingKeys: String, CodingKey {
        case id
        case text
        case completed
    }
}
    
//struct TaskObject {
//var id: String
//var text: String
//var completed: Bool
//
//    init (id: String, text: String, completed: Bool) {
//        self.id = id
//        self.text = text
//        self.completed = completed
//    }
//}
