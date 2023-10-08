//
//  welcomeViewController.swift
//  HomeworkApp6
//
//  Created by Глеб Зобнин on 09.10.2023.
//

import UIKit

class WelcomeViewController: UIViewController {
    @IBOutlet var welcomeView: UIView!
    @IBOutlet weak var welcomeLabel: UILabel!
    
    var name: String = ""

    override func viewDidLoad() {
        super.viewDidLoad()
        let gradient = CAGradientLayer()
        gradient.frame = welcomeView.bounds
        gradient.colors = [UIColor.blue.cgColor, UIColor.purple.cgColor]
        view.layer.insertSublayer(gradient, at: 0)
        welcomeLabel.text = "Welcome, \(name)!"
    }
}
