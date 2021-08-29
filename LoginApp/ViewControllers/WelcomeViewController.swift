//
//  WelcomeViewController.swift
//  LoginApp
//
//  Created by Александр Крюков on 25.08.2021.
//  Copyright © 2021 Александр Крюков. All rights reserved.
//

import UIKit

class WelcomeViewController: UIViewController {
    
    @IBOutlet weak var welcomeLabel: UILabel!
    
    var user = ""
    
    override func viewDidLoad() { 
        super.viewDidLoad()
        setGradientBackground()
        welcomeLabel.text = "Welcome \(user)"
    }
    // MARK: - Set gradient background color
    func setGradientBackground() {
        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = [UIColor.blue.cgColor, UIColor.orange.cgColor]
        gradientLayer.locations = [0.0, 1.0]
        gradientLayer.frame = view.bounds
        view.layer.insertSublayer(gradientLayer, at:0)
    }

}
