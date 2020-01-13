//
//  HomeContentView.swift
//  MasteringSwiftUI
//
//  Created Domagoj Kulundzic on 13/01/2020.
//  Copyright © 2020 Martian & Machine. All rights reserved.
//

import UIKit

class HomeContentView: UIView {
  override init(frame: CGRect) {
    super.init(frame: frame)
    setupViews()
  }
  
  required init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
}

// MARK: - Private Methods
private extension HomeContentView {
  func setupViews() { }
}
