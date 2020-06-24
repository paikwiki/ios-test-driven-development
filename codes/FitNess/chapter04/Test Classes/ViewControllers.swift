//
//  ViewControllers.swift
//  FitNess
//
//  Created by Changhyun Baek on 2020/06/24.
//  Copyright © 2020 Razeware. All rights reserved.
//

import UIKit
@testable import FitNess

func loadRootViewController() -> RootViewController {
  let window = UIApplication.shared.windows[0]
  return window.rootViewController as! RootViewController
}
