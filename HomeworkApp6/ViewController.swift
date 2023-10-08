//
//  ViewController.swift
//  HomeworkApp6
//
//  Created by Глеб Зобнин on 08.10.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var logInButton: UIButton!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var userNameTextField: UITextField!
    
    private let userName = "Petya"
    private let password = "PeTyA120901"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        logInButton.layer.cornerRadius = 10
        // Do any additional setup after loading the view.
    }
    
    @IBAction func forgotUserNameAction() {
        showAlert(with: "Oops!", and: "Your user name is \(userName)")
    }
    
    @IBAction func forgotPasswordAction() {
        showAlert(with: "Oops!", and: "Your password is \(password)")
    }
    
    
    private func showAlert(with title: String, and message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default)
        alert.addAction(okAction) //добавляем кнопку к alert
        present(alert, animated: true)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super .touchesBegan(touches, with: event)
    }
}



