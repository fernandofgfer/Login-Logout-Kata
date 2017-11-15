//
//  ValidateEmailPassword.swift
//  Login-Logout
//
//  Created by Fernando García Fernández on 15/11/17.
//  Copyright © 2017 Fernando García Fernández. All rights reserved.
//

import Foundation


class ValidateEmailPassword: NSObject{

    func validate(email: String, password: String) -> Bool{
        if email.isEmpty || password.isEmpty{
            return false
        }
        return true
    }
    
}
