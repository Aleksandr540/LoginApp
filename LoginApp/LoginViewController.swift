//
//  ViewController.swift
//  LoginApp
//
//  Created by Александр Крюков on 25.08.2021.
//  Copyright © 2021 Александр Крюков. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet weak var userNameTF: UITextField!
    @IBOutlet weak var passwordTF: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBAction func logInPressed() {
       addAlert(with: "Invalid login or password", and: "Please enter correct login or password")
        }
    @IBAction func forgotNamePressed() {
       addAlert(with: "Hello!", and: "Your name is UI")
    }
    @IBAction func forgotPasswordPressed() {
        addAlert(with: "Hi!", and: "Your password is Kit")
    }
    
    func addAlert (with title:String, and message:String){
    let alertName = UIAlertController(title: title, message: message, preferredStyle: UIAlertController.Style.alert)
        alertName.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
    self.present(alertName, animated: true, completion: nil)
    }
}




