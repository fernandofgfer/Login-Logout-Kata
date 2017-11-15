//
//  LoginViewController.swift
//  Login-Logout
//
//  Created by Fernando García Fernández on 15/11/17.
//  Copyright © 2017 Fernando García Fernández. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController{
    
    @IBOutlet var userTextField: UITextField!
    @IBOutlet var passTextField: UITextField!
    @IBOutlet var logInButton: UIButton!
    
    var presenter: LoginPresenter!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        presenter = LoginPresenter(view: self)
        setUpView()
    }
    
    fileprivate func setUpView() {
        userTextField.addTarget(self, action: #selector(textFieldDidChange),
                                for: UIControlEvents.editingChanged)
        passTextField.addTarget(self, action: #selector(textFieldDidChange),
                                for: UIControlEvents.editingChanged)
        logInButton.addTarget(self, action: #selector(loginPressed), for: .touchDown)
        setButtonStatus(isEnabled: false)
    }
    
    @objc func textFieldDidChange(){
        presenter.setUser(user: userTextField.text ?? "")
        presenter.setPass(pass: passTextField.text ?? "")
    }
    
    @objc func loginPressed(){
        presenter.loginPressed()
    }
}

extension LoginViewController: LoginProtocol{
    func showErrorPass() {
        print("Wrong pass")
    }
    
    func showSuccessPass() {
        print("Success pass")
    }
    
    func setButtonStatus(isEnabled: Bool) {
        logInButton.isEnabled = isEnabled
    }
}
