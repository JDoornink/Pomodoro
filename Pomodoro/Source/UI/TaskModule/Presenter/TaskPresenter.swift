//
//  TaskPresenter.swift
//  Pomodoro
//
//  Created by JD on 6/17/20.
//  Copyright © 2020 JDoor. All rights reserved.
//

import Foundation
import Firebase

protocol TaskPresenterProtocol: class {
    
}

class TaskPresenter {
    
    lazy var store = Firestore.firestore()
    
    private weak var view: TaskViewControllerProtocol!
    
    required init(view: TaskViewControllerProtocol) {
        self.view = view
        }
}
extension TaskPresenter: TaskPresenterProtocol{
    
}
