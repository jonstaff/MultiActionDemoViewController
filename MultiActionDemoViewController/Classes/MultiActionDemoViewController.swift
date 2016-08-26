//
//  MultiActionDemoViewController.swift
//  MultiActionDemoViewController
//
//  Created by Jonathon Staff on 8/25/16.
//  Copyright © 2016 Nplexity LLC. All rights reserved.
//

import UIKit

public class MultiActionDemoViewController: UIViewController {
  public var actions: [Action] = [] {
    didSet {
      updateButtons()
    }
  }

  private var lookupTable: [UIButton: Action] = [:]
  private weak var stackView: UIStackView?

  public override func viewDidLoad() {
    super.viewDidLoad()
    view.backgroundColor = .whiteColor()
    updateButtons()
  }
}

private extension MultiActionDemoViewController {
  func updateButtons() {
    self.stackView?.removeFromSuperview()
    lookupTable.removeAll()

    let stackView = UIStackView()
    stackView.distribution = .FillEqually
    stackView.axis = .Vertical
    stackView.alignment = .Center
    stackView.autoresizingMask = [.FlexibleWidth, .FlexibleHeight]
    stackView.frame = CGRect(origin: CGPoint.zero, size: view.bounds.size)
    view.addSubview(stackView)

    for action in actions {
      let button = UIButton(type: .System)
      button.setTitle(action.title, forState: .Normal)
      button.addTarget(self, action: #selector(invokeAction), forControlEvents: .TouchUpInside)
      lookupTable[button] = action
      stackView.addArrangedSubview(button)
    }

    self.stackView = stackView
  }

  @objc func invokeAction(button: UIButton) {
    if let action = lookupTable[button] {
      action.action()
    } else {
      print("No action provided for button: \(button)")
    }
  }
}