//
//  HomeViewController.swift
//  MasteringSwiftUI
//
//  Created Domagoj Kulundzic on 13/01/2020.
//  Copyright © 2020 Martian & Machine. All rights reserved.
//

import UIKit

protocol HomeDisplayLogic: class { }

class HomeViewController: UIViewController {
  var presenter: HomeViewPresentingLogic?
  private lazy var contentView = HomeContentView.autolayoutView()
  
  override func viewDidLoad() {
    super.viewDidLoad()
    setupView()
  }
}

// MARK: - HomeDisplayLogic
extension HomeViewController: HomeDisplayLogic { }

private extension HomeViewController {
  func setupView() {
    setupContentView()
  }
  
  func setupContentView() {
    view.addSubview(contentView)
  }
}
