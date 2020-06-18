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
    var presenter: TaskPresenterProtocol!
    
    @IBOutlet var taskView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        taskView.backgroundColor = .systemGray2

        // Do any additional setup after loading the view.
    }
}
extension TaskViewController: TaskViewControllerProtocol {
    
}
