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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        testsCollectionRef = store.collection("tasks")
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

