//
//  HomeViewController.swift
//  Pomodoro
//
//  Created by JD on 6/17/20.
//  Copyright © 2020 JDoor. All rights reserved.
//

import UIKit

protocol HomeViewControllerProtocol: class {
    
}

class HomeViewController: UIViewController {

    // MARK: 3 - Reference to Presenter protocol (interface)
    var presenter: HomePresenterProtocol!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
}
