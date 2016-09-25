//
//  MultiActionDemoViewController.swift
//  MultiActionDemoViewController
//
//  Created by Jonathon Staff on 8/25/16.
//  Copyright © 2016 Nplexity LLC. All rights reserved.
//

import UIKit

open class MultiActionDemoViewController: UIViewController {
  open var actions: [Action] = [] {
    didSet {
      updateButtons()
    }
  }

  fileprivate var lookupTable: [UIButton: Action] = [:]
  fileprivate weak var stackView: UIStackView?

  open override func viewDidLoad() {
    super.viewDidLoad()
    view.backgroundColor = .white
    updateButtons()
  }
}

private extension MultiActionDemoViewController {
  func updateButtons() {
    self.stackView?.removeFromSuperview()
    lookupTable.removeAll()

    let stackView = UIStackView()
    stackView.distribution = .fillEqually
    stackView.axis = .vertical
    stackView.alignment = .center
    stackView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
    stackView.frame = CGRect(origin: CGPoint.zero, size: view.bounds.size)
    view.addSubview(stackView)

    for action in actions {
      let button = UIButton(type: .system)
      button.setTitle(action.title, for: UIControlState())
      button.addTarget(self, action: #selector(invokeAction), for: .touchUpInside)
      lookupTable[button] = action
      stackView.addArrangedSubview(button)
    }

    self.stackView = stackView
  }

  @objc func invokeAction(_ button: UIButton) {
    if let action = lookupTable[button] {
      action.action()
    } else {
      print("No action provided for button: \(button)")
    }
  }
}
