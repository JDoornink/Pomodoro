//
//  HomePresenter.swift
//  Pomodoro
//
//  Created by JD on 6/17/20.
//  Copyright © 2020 JDoor. All rights reserved.
//

import Foundation

protocol HomePresenterProtocol : AnyObject {

}

class HomePresenter: HomePresenterProtocol {
    weak var view: HomeViewController?
    
    required init(view: HomeViewController){
        self.view = view
    }
}
