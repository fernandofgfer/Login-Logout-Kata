//
//  LoginServer.swift
//  Login-Logout
//
//  Created by Fernando García Fernández on 15/11/17.
//  Copyright © 2017 Fernando García Fernández. All rights reserved.
//

import Foundation

class LoginServer: NSObject{
    func validatePassword(pass: String) -> Bool{
        if pass.isEmpty || pass == "1" {
            return false
        }
        return true
    }
}
