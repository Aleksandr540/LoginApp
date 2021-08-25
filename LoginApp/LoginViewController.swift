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
    
    var userName: String!
    var password: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        userNameTF.text = userName ?? "q"
//        passwordTF.text = password ?? "q"
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        if userNameTF.text != "UI" || passwordTF.text != "Kit" {addAlert(with: "Invalid login or password", and: "Please enter correct login or password")}
//        else {
            guard let welcomeVC = segue.destination as? WelcomeViewController else {return}
        welcomeVC.welcome = userNameTF.text
            
            
//      
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
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        userNameTF.text = ""
        passwordTF.text = ""
    }
}




