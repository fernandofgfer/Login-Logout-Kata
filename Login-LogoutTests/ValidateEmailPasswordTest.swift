//
//  ValidateEmailPasswordTest.swift
//  Login-LogoutTests
//
//  Created by Fernando García Fernández on 15/11/17.
//  Copyright © 2017 Fernando García Fernández. All rights reserved.
//

import XCTest
@testable import Login_Logout

class ValidateEmailPasswordTest: XCTestCase {
    
    var validator: ValidateEmailPassword!
    
    override func setUp() {
        super.setUp()
        validator = ValidateEmailPassword()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testEmptyBothStringsReturnFalse(){
        XCTAssertFalse(validator.validate(email: "", password: ""))
    }
    
    
}
