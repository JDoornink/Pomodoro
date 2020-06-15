//
//  ArticleObject.swift
//  Pomodoro
//
//  Created by JD on 6/14/20.
//  Copyright © 2020 JDoor. All rights reserved.
//

import Foundation

struct TaskObject {
    var id: String
    var text: String
    var completed: Bool
    
    init (id: String, text: String, completed: Bool) {
        self.id = id
        self.text = text
        self.completed = completed
    }
}
