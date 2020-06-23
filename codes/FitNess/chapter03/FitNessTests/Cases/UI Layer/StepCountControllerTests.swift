//
//  StepCountControllerTests.swift
//  FitNessTests
//
//  Created by Changhyun Baek on 2020/06/23.
//  Copyright © 2020 Razeware. All rights reserved.
//

import XCTest
@testable import FitNess

class StepCountControllerTests: XCTestCase {
  
  var sut: StepCountController!
  
  override func setUpWithError() throws {
    super.setUp()
    sut = StepCountController()
  }

  override func tearDownWithError() throws {
    sut = nil
    super.tearDown()
  }
  
  // MARK: - Initial State
  
  func testController_whenCreated_buttonLabelIsStart() {
    // given
    sut.viewDidLoad()
    let text = sut.startButton.title(for: .normal)
    XCTAssertEqual(text, AppState.notStarted.nextStateButtonLabel)
  }
  
  
  // MARK: - In Progress
  
  func testController_whenStartTapped_appIsInProgress() {
    // when
    sut.startStopPause(nil)
    
    // then
    let state = AppModel.instance.appState
    XCTAssertEqual(state, AppState.inProgress)
  }
  
  func testController_whenStartTapped_buttonLabelIsPause() {
    // when
    sut.startStopPause(nil)
    
    // then
    let text = sut.startButton.title(for: .normal)
    XCTAssertEqual(text, AppState.inProgress.nextStateButtonLabel)
  }

}
