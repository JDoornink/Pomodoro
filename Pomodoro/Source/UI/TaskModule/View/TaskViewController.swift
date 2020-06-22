//
//  TaskViewController.swift
//  Pomodoro
//
//  Created by JD on 6/17/20.
//  Copyright © 2020 JDoor. All rights reserved.
//

import UIKit
import Firebase

protocol TaskViewControllerProtocol: class {
}

class TaskViewController: UIViewController {
    lazy var store = Firestore.firestore()
    private var testsCollectionRef: CollectionReference!
    var tasks: [TaskObject] = []
    
    var presenter: TaskPresenterProtocol!
    
    @IBOutlet var taskView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        taskView.backgroundColor = .systemGray2
        testsCollectionRef = store.collection("tasks")

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        testsCollectionRef.getDocuments { (snapshot, error) in
            if let err = error {
                debugPrint("Error fetchng docs: \(err)")
            } else {
                for document in (snapshot?.documents)! {
                    //var id = document.get("id") as! String
                    let taskText = document.get("text") as! String
                    let completed = document.get("completed")as? Bool
                    let task = TaskObject(id: "123", text: taskText, completed: completed!)
                    self.tasks.append(task)
                }
            }
            print(self.tasks)
        }
    }
}
extension TaskViewController: TaskViewControllerProtocol {
    
}
