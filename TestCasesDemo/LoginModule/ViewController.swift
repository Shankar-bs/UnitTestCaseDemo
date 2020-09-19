//
//  ViewController.swift
//  TestCasesDemo
//
//  Created by Shankar B S on 19/09/20.
//  Copyright © 2020 Slicode. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var userNameField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    @IBOutlet weak var signInButton: UIButton!
   
    private let loginViewModel = LoginModuleViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func signInButtonAction(_ sender: Any) {
        guard let userName = userNameField.text, let password = passwordField.text else { return }
        let shouldLogin = loginViewModel.loginWith(userName: userName, password: password)
        if shouldLogin {
            //proceed
        }
    }
}
