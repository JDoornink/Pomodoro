//
//  TasksViewController.swift
//  Pomodoro
//
//  Created by JD on 6/14/20.
//  Copyright © 2020 JDoor. All rights reserved.
//

import Foundation
import UIKit

class TasksViewController: UIViewController {
    
    @IBOutlet var taskView: UIViewController!
    @IBOutlet weak var goButton: UIButton!
    
//    override init(frame: CGRect) { // for using CustomView in code
//        super.init()
//        commonInit()
//    }
    
//    required init?(coder aDecoder: NSCoder ) { // for using CustomView in IB
//        super.init(coder: aDecoder)
//        commonInit()
//    }
    
    private func commonInit() {
        //we're going to do stuff here
//        Bundle.main.loadNibNamed("TasksViewController", owner:self, options:nil)
//        addSubview(taskView)
//
//        taskView.translatesAutoresizingMaskIntoConstraints = false
//        NSLayoutConstraint.activate([
//            taskView.topAnchor.constraint(equalTo: self.topAnchor),
//            taskView.leadingAnchor.constraint(equalTo: self.leadingAnchor),
//            taskView.trailingAnchor.constraint(equalTo: self.trailingAnchor),
//            taskView.bottomAnchor.constraint(equalTo: self.bottomAnchor)])
        
        //goButton.setTitle("GO", for: .normal)
    }
    
}
