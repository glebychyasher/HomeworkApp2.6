//
//  ViewController.swift
//  HomeworkApp6
//
//  Created by Глеб Зобнин on 08.10.2023.
//

import UIKit

final class LoginViewController: UIViewController {
    
    @IBOutlet weak var logInButton: UIButton!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var userNameTextField: UITextField!
    
    private let userName = "Petya"
    private let password = "PeTyA120901"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        logInButton.layer.cornerRadius = 10
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) { //уборка клавиатуры по тапу на пустую часть экрана
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomeVC = segue.destination as? WelcomeViewController else { return }
        welcomeVC.name = userNameTextField.text ?? ""
    }
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool { //разрешение на переход
        guard userNameTextField.text == userName, passwordTextField.text == password else {
            showAlert(with: "Oops!", and: "Wrong password or user name")
            return false
        }
        // Введенное имя валидно, разрешаем переход
        return true
    }
    @IBAction func forgotUserNameAction() {
        showAlert(with: "Oops!", and: "Your user name is \(userName)", textField: userNameTextField)
    }
    
    @IBAction func forgotPasswordAction() {
        showAlert(with: "Oops!", and: "Your password is \(password)", textField: passwordTextField)
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        passwordTextField.text = ""
        userNameTextField.text = ""
    }
    
    private func showAlert(with title: String, and message: String, textField: UITextField? = nil) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default){_ in
            textField?.text = ""
        }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}



