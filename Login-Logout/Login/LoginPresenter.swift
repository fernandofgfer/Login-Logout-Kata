//
//  LoginPresenter.swift
//  Login-Logout
//
//  Created by Fernando García Fernández on 15/11/17.
//  Copyright © 2017 Fernando García Fernández. All rights reserved.
//

import Foundation

protocol LoginProtocol: class{
    func setButtonStatus(isEnabled: Bool)
}


class LoginPresenter: NSObject{
    
    weak var view: LoginProtocol!
    var user: String! = ""
    var pass: String! = ""
    var validator: ValidateEmailPassword!
    
    init(view: LoginProtocol){
        self.view = view
        validator = ValidateEmailPassword()
    }
    
    func setUser(user: String){
        self.user = user
        checkTextFields()
    }
    
    func setPass(pass: String){
        self.pass = pass
        checkTextFields()
    }
    
    func checkTextFields(){
        validator.validate(email: user, password: pass) ? view.setButtonStatus(isEnabled: true) : view.setButtonStatus(isEnabled: false)
    }
    
}
