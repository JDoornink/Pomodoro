//
//  ModuleBuilder.swift
//  Pomodoro
//
//  Created by JD on 6/17/20.
//  Copyright © 2020 JDoor. All rights reserved.
//

import UIKit.UIViewController

// MARK: 12 - ModuleBuilder responsible for creating modules, this is simple class with static funcs that returns UIViewController with all dependencies.
class ModuleBuilder {
    static func createHomeModule() -> UIViewController {
        let view = HomeViewController.loadFromNib()
        let presenter = HomePresenter(view: view)
        view.presenter = presenter
        return view
    }
    
    static func createTaskModule() -> UIViewController {
        let view = TaskViewController.loadFromNib()
        let presenter = TaskPresenter(view: view)
        view.presenter = presenter
        return view
    }
}

// MARK: This is utility extension for handy instantiating controller
extension UIViewController {
    static func loadFromNib() -> Self {
        func instantiateFromNib<T: UIViewController>() -> T {
            return T.init(nibName: String(describing: T.self), bundle: nil)
        }

        return instantiateFromNib()
    }
}
