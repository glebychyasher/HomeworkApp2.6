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
    @IBOutlet weak var loginTextField: UITextField!
    
    private let users = User.getUsers()
    private var userForMove: User?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        logInButton.layer.cornerRadius = 10
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) { //уборка клавиатуры по тапу на пустую часть экрана
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let tabBar = segue.destination as? UITabBarController else { return }
        tabBar.viewControllers?[1].tabBarItem.title = userForMove?.person.name
        guard let viewControllers = tabBar.viewControllers else { return }
        for viewController in viewControllers {
            if let welcomeVC = viewController as? WelcomeViewController {
                welcomeVC.name = userForMove?.person.name
            } else if let navigationVC = viewController as? UINavigationController {
                guard let informationVC = navigationVC.topViewController as? InformationViewController else { return }
                informationVC.user = userForMove
            
            }
        }
        
        
    }
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool { //разрешение на переход
        for user in users {
            if user.password == passwordTextField.text && user.login == loginTextField.text {
                userForMove = user
                return true
            }
        }
        showAlert(with: "Oops!", and: "Wrong password or user name")
        return false
        
    }
    @IBAction func forgotUserNameAction() {
        showAlert(with: "Oops!", and: "We don't know your login", textField: loginTextField)
    }
    
    @IBAction func forgotPasswordAction() {
        showAlert(with: "Oops!", and: "We don't know your password", textField: passwordTextField)
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        passwordTextField.text = ""
        loginTextField.text = ""
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



