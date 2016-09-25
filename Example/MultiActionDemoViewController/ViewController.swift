//
//  ViewController.swift
//  MultiActionDemoViewController
//
//  Created by Jonathon Staff on 08/25/2016.
//  Copyright (c) 2016 Jonathon Staff. All rights reserved.
//

import UIKit
import MultiActionDemoViewController

class ViewController: MultiActionDemoViewController {
  var addedActionCounter = 0

  override func viewDidLoad() {
    super.viewDidLoad()

    let printAction = Action(title: "Print Something") {
      print("All this does is print something...")
    }

    let alertAction = Action(title: "Display Alert") { [weak self] in
      let alert = UIAlertController(title: "Alert",
                                    message: "Alert message here",
                                    preferredStyle: .alert)
      alert.addAction(UIAlertAction(title: "OK", style: .cancel, handler: nil))
      self?.present(alert, animated: true, completion: nil)
    }

    let addAction = Action(title: "Add Arbitrary Action") { [weak self] in
      guard let `self` = self else {
        return
      }

      let count = self.addedActionCounter
      let action = Action(title: "Added Action \(count)") {
        print("Printing added action \(count)")
      }

      self.actions.append(action)
      self.addedActionCounter += 1
    }

    actions.append(contentsOf: [printAction, alertAction, addAction])
  }
}
