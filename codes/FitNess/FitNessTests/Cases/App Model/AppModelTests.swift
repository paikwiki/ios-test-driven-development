//
//  AppModelTests.swift
//  FitNessTests
//
//  Created by Changhyun Baek on 2020/06/23.
//  Copyright © 2020 Razeware. All rights reserved.
//

import XCTest
import FitNess

class AppModelTests: XCTestCase {
  
  var sut: AppModel!

  override func setUpWithError() throws {
    super.setUp()
    sut = AppModel()
  }

  override func tearDownWithError() throws {
    sut = nil
    super.tearDown()
  }
  
  func testAppModel_whenInitialized_isInNotStartedState() {
    let initialState = sut.appState
    XCTAssertEqual(initialState, AppState.notStarted)
  }
  
  func testAppModel_whenStarted_isInInProgressState() {
    // 2 when started
    sut.start()
    
    // 3 then it is in inProgress
    let observedState = sut.appState
    XCTAssertEqual(observedState, AppState.inProgress)
  }

}
