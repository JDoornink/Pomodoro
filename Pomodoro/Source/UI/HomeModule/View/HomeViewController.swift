//
//  HomeViewController.swift
//  Pomodoro
//
//  Created by JD on 6/13/20.
//  Copyright © 2020 JDoor. All rights reserved.
//

import Foundation
import UIKit

class HomeViewController: UIViewController {
    var presenter: HomeViewPresenter!
    
    @IBOutlet var homeView: UIView!
    @IBOutlet weak var titleLabel1: UILabel!
    @IBOutlet weak var titleLabel2: UILabel!
    @IBOutlet weak var usernameEntry: UITextField!
    @IBOutlet weak var passwordEntry: UITextField!
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var createNewProfileButton: UIButton!
    @IBOutlet weak var continueAsGuestButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func contineasGuestButtonPress(_ sender: UIButton) {
        print("Continue As Guest Button was pressed")
        // Transition to TasksViewController
    }
}

//class HomeViewController: UIView {
//
//
//    @IBOutlet var homeView: UIView!
//    @IBOutlet weak var titleLabel1: UILabel!
//    @IBOutlet weak var titleLabel2: UILabel!
//    @IBOutlet weak var usernameEntry: UITextField!
//    @IBOutlet weak var passwordEntry: UITextField!
//    @IBOutlet weak var loginButton: UIButton!
//    @IBOutlet weak var createNewProfileButton: UIButton!
//    @IBOutlet weak var continueAsGuestButton: UIButton!
//
//    override init(frame: CGRect) { // for using CustomView in code
//        super.init(frame: frame)
//        commonInit()
//    }
//
//    required init?(coder aDecoder: NSCoder ) { // for using CustomView in IB
//        super.init(coder: aDecoder)
//        commonInit()
//    }
//
//    private func commonInit() {
//        //we're going to do stuff here
//        Bundle.main.loadNibNamed("HomeViewController", owner:self, options:nil)
//        addSubview(homeView)
//
//        homeView.translatesAutoresizingMaskIntoConstraints = false
//        NSLayoutConstraint.activate([
//            homeView.topAnchor.constraint(equalTo: self.topAnchor),
//            homeView.leadingAnchor.constraint(equalTo: self.leadingAnchor),
//            homeView.trailingAnchor.constraint(equalTo: self.trailingAnchor),
//            homeView.bottomAnchor.constraint(equalTo: self.bottomAnchor)])
//    }
//    @IBAction func loginButtonPress(_ sender: Any) {
//        print("Login was pressed")
//    }
//    @IBAction func createNewProfileButtonPress(_ sender: Any) {
//        print("Create New Profile was pressed")
//    }
//
//    @IBAction func contineasGuestButtonPress(_ sender: UIButton) {
//        print("Continue As Guest Button was pressed")
//        let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
//
//        let nextViewController = storyBoard.instantiateViewControllerWithIdentifier("nextView") as TasksViewController
//        self.presentViewController(nextViewController, animated:true, completion:nil)
//    }
//}

