//
//  HomeRouter.swift
//  MasteringSwiftUI
//
//  Created Domagoj Kulundzic on 13/01/2020.
//  Copyright © 2020 Martian & Machine. All rights reserved.
//

import UIKit

protocol HomeRoutingLogic: class { }

protocol HomeRouterDelegate: class { }

class HomeRouter {
  weak var viewController: HomeViewController?
  weak var delegate: HomeRouterDelegate?
  
  static func createModule(delegate: HomeRouterDelegate?) -> HomeViewController {
    let view = HomeViewController()
    let interactor = HomeInteractor()
    let router = HomeRouter()
    router.delegate = delegate
    router.viewController = view
    let presenter = HomePresenter(interface: view, interactor: interactor, router: router)
    view.presenter = presenter
    return view
  }
}

// MARK: - HomeRoutingLogic
extension HomeRouter: HomeRoutingLogic { }
