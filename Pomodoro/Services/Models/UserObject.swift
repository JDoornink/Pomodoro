//
//  UserObject.swift
//  Pomodoro
//
//  Created by JD on 6/14/20.
//  Copyright © 2020 JDoor. All rights reserved.
//

import Foundation

struct UserObject {
    var tenantId: String?
    var userId: String
    var username: String
    var email: String
    var tasks: TaskObject
    
    init(tenantId: String?, userId: String, username: String, email: String, tasks: TaskObject) {
        self.tenantId = tenantId
        self.userId = userId
        self.username = username
        self.email = email
        self.tasks = tasks
    }
}
