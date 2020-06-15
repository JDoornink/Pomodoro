//
//  HomeViewPresenter.swift
//  Pomodoro
//
//  Created by JD on 6/12/20.
//  Copyright © 2020 JDoor. All rights reserved.
//

import Foundation

protocol HomeViewPresenterProtocol : AnyObject {

}

class HomeViewPresenter: HomeViewPresenterProtocol {
    weak var view: HomeViewController?
    
    required init(view: HomeViewController){
        self.view = view
    }
}
