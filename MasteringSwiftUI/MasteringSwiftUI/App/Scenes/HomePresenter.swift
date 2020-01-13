//
//  HomePresenter.swift
//  MasteringSwiftUI
//
//  Created Domagoj Kulundzic on 13/01/2020.
//  Copyright © 2020 Martian & Machine. All rights reserved.
//

import Foundation

protocol HomeViewPresentingLogic: class { }

class HomePresenter {
  var interactor: HomeBusinessLogic?
  weak private var view: HomeDisplayLogic?
  private let router: HomeRoutingLogic
  
  init(interface: HomeDisplayLogic, interactor: HomeBusinessLogic?, router: HomeRoutingLogic) {
    self.view = interface
    self.interactor = interactor
    self.router = router
  }
}

// MARK: - HomeViewPresentingLogic
extension HomePresenter: HomeViewPresentingLogic { }
