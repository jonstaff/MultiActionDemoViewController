//
//  AppDelegate.swift
//  MultiActionDemoViewController
//
//  Created by Jonathon Staff on 08/25/2016.
//  Copyright (c) 2016 Jonathon Staff. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

  var window: UIWindow?

  func application(application: UIApplication,
                   didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
    let window = UIWindow(frame: UIScreen.mainScreen().bounds)
    window.rootViewController = ViewController()
    window.makeKeyAndVisible()
    self.window = window
    return true
  }
}
