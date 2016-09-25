//
//  Action.swift
//  MultiActionDemoViewController
//
//  Created by Jonathon Staff on 8/25/16.
//  Copyright © 2016 Nplexity LLC. All rights reserved.
//

import Foundation

public struct Action {
  public let title: String
  public let action: () -> ()

  public init(title: String, action: @escaping () -> ()) {
    self.title = title
    self.action = action
  }
}
