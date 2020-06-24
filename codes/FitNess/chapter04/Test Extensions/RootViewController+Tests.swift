//
//  RootViewController+Tests.swift
//  FitNess
//
//  Created by Changhyun Baek on 2020/06/24.
//  Copyright © 2020 Razeware. All rights reserved.
//

import UIKit
@testable import FitNess

extension RootViewController {
  var stepController: StepCountController {
    return children.first { $0 is StepCountController }
      as! StepCountController
  }
}
