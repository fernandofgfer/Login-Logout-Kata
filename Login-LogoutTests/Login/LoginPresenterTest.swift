//
//  LoginPresenterTest.swift
//  Login-LogoutTests
//
//  Created by Fernando García Fernández on 15/11/17.
//  Copyright © 2017 Fernando García Fernández. All rights reserved.
//

import XCTest
@testable import Login_Logout

class LoginPresenterTest: XCTestCase {
    
    var presenter: LoginPresenter!
    var spy: LoginPresenterSpy!
    
    override func setUp() {
        super.setUp()
        spy = LoginPresenterSpy()
        presenter = LoginPresenter(view: spy)
    }
    
    override func tearDown() {
        spy = nil
        presenter = nil
        super.tearDown()
    }
    
    func testThatPresenterShouldnBeNil(){
        XCTAssertNotNil(presenter)
    }
    
    func testThatViewShouldnBeNil(){
        XCTAssertNotNil(presenter.view)
    }
    
    func testSetUserWithUserShouldBeThisUser(){
        presenter.setUser(user: "Karumi")
        XCTAssertEqual(presenter.user, "Karumi")
    }
    
    func testSetUserWithUserShouldNotBeAnotherUser(){
        presenter.setUser(user: "Karumi")
        XCTAssertNotEqual(presenter.user, "KARUMI")
    }
    
    func testSetPassWithPassShouldBeThisPass(){
        presenter.setPass(pass: "Code")
        XCTAssertEqual(presenter.pass, "Code")
    }
    
    func testSetPassWithUserShouldNotBeAnotherPass(){
        presenter.setPass(pass: "Code")
        XCTAssertNotEqual(presenter.pass, "CODE")
    }
    
    func testCheckFieldsWithUserAndPassAndButtonSetEnabled(){
        presenter.setUser(user: "Karumi")
        presenter.setPass(pass: "Code")
        presenter.checkTextFields()
        XCTAssertTrue(spy.statusButton)
    }
    
    func testCheckFieldsWithOnlyUserAndButtonSetDisabled(){
        presenter.setUser(user: "Karumi")
        presenter.checkTextFields()
        XCTAssertFalse(spy.statusButton)
    }
    
    func testCheckFieldsWithOnlyPassAndButtonSetDisabled(){
        presenter.setPass(pass: "Code")
        presenter.checkTextFields()
        XCTAssertFalse(spy.statusButton)
    }
    
    func testCheckFieldsWithNothingAndButtonSetDisabled(){
        presenter.checkTextFields()
        XCTAssertFalse(spy.statusButton)
    }
}
