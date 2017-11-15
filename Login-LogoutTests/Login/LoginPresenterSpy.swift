//
//  LoginPresenterSpy.swift
//  Login-LogoutTests
//
//  Created by Fernando García Fernández on 15/11/17.
//  Copyright © 2017 Fernando García Fernández. All rights reserved.
//

import Foundation
@testable import Login_Logout

class LoginPresenterSpy: LoginProtocol{
    
    var setButtonStatusCalled = false
    var statusButton = false
    var showErrorPassCalled = false
    var showSuccessPassCalled = false
    
    func setButtonStatus(isEnabled: Bool) {
        setButtonStatusCalled = true
        statusButton = isEnabled
    }
    
    func showErrorPass() {
        showErrorPassCalled = true
    }
    
    func showSuccessPass() {
        showSuccessPassCalled = true
    }
    
}
