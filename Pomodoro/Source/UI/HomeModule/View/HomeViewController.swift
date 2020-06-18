//
//  HomeViewController.swift
//  Pomodoro
//
//  Created by JD on 6/17/20.
//  Copyright © 2020 JDoor. All rights reserved.
//

import UIKit

protocol HomeViewControllerProtocol: class {
    func goToScreen(_ screen: UIViewController)
}

class HomeViewController: UIViewController {

    @IBOutlet weak var continueAsGuestButton: UIButton!
    // MARK: 3 - Reference to Presenter protocol (interface)
    var presenter: HomePresenterProtocol!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        continueAsGuestButton.setTitle("Continue As Guest", for: .normal)

        // Do any additional setup after loading the view.
    }
    
    @IBAction func clickContinueAsGuestButton(_ sender: Any) {
        print("ContinueAsGuestButtonClicked")
        presenter.didTapGuestButton()
    }
}
extension HomeViewController: HomeViewControllerProtocol {
    // MARK: 14 - UIViewController has access to NavigationController, this is all part off UIKit. So we can call push to another screen.
    func goToScreen(_ screen: UIViewController) {
    navigationController?.pushViewController(screen, animated: true)
    }
}
