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
    func viewDidLoad()
}

class TaskPresenter {
    
    lazy var store = Firestore.firestore()
    private var testsCollectionRef: CollectionReference!
    
    private weak var view: TaskViewControllerProtocol!
    
    required init(view: TaskViewControllerProtocol) {
        self.view = view
        }
    
    func viewDidLoad(){
        testsCollectionRef = store.collection("tests")
        testsCollectionRef.getDocuments { (snapshot, error) in
            if let err = error {
                debugPrint("Error fetchng docs: \(err)")
            } else {
                for document in (snapshot?.documents)! {
                    print("DataWriteTestPresenterProtocol-1")
                    print(document.data())
                    print("DataWriteTestPresenterProtocol-2")
                }
            }
        }
    }
}
extension TaskPresenter: TaskPresenterProtocol{
    
}
