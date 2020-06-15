//
//  ViewController.swift
//  Pomodoro
//
//  Created by JD on 6/12/20.
//  Copyright © 2020 JDoor. All rights reserved.
//

import UIKit
import Firebase

class ViewController: UIViewController {
    
    lazy var store = Firestore.firestore()
    private var testsCollectionRef: CollectionReference!

    @IBOutlet weak var homeView: HomeViewController!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        testsCollectionRef = store.collection("tests")
        homeView.isUserInteractionEnabled=true
        //homeView.TestButton.isUserInteractionEnabled = true
        homeView.titleLabel1.font = homeView.titleLabel1.font.withSize(40)
        homeView.titleLabel1.text = "Pomodoro"
        homeView.titleLabel2.text = "Where Tasks Come to Live...Then Die"
        homeView.usernameEntry.textColor = UIColor.gray
        homeView.usernameEntry.text = "username or password"
        homeView.passwordEntry.textColor = UIColor.gray
        homeView.passwordEntry.text = "password"
        homeView.loginButton.setTitle("Login", for: .normal)
        homeView.createNewProfileButton.setTitle("Create New Profile", for: .normal)
        homeView.continueAsGuestButton.setTitle("Continue as Guest", for: .normal)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        testsCollectionRef.getDocuments { (snapshot, error) in
            if let err = error {
                debugPrint("Error fetchng docs: \(err)")
            } else {
                for document in (snapshot?.documents)! {
                    print(document.data())
                    print("DataWrite")
                }
            }
        }
    }
    
    override func viewDidAppear (_ animated: Bool) {
        let nav = self.navigationController?.navigationBar
        nav?.barStyle = UIBarStyle.black
        nav?.barTintColor = UIColor.gray
    }


}

