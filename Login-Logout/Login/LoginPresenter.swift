//
//  LoginPresenter.swift
//  Login-Logout
//
//  Created by Fernando García Fernández on 15/11/17.
//  Copyright © 2017 Fernando García Fernández. All rights reserved.
//

import Foundation

//Change name a View
protocol LoginProtocol: class{
    func setButtonStatus(isEnabled: Bool)
    func showErrorPass()
    func showSuccessPass()
}

class LoginPresenter: NSObject{
    
    weak var view: LoginProtocol!
    var user: String! = ""
    var pass: String! = ""
    var validator: ValidateEmailPassword!
    var loginServer: LoginServer!
    
    init(view: LoginProtocol){
        self.view = view
        validator = ValidateEmailPassword()
        loginServer = LoginServer()
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
    
    func loginPressed(){
        checkPass()
    }
    
    func checkPass(){
        loginServer.validatePassword(pass: pass) ? view.showErrorPass() : view.showSuccessPass()
    }
}
