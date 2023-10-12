//
//  welcomeViewController.swift
//  HomeworkApp6
//
//  Created by Глеб Зобнин on 09.10.2023.
//

import UIKit

final class WelcomeViewController: UIViewController {
    @IBOutlet var welcomeView: UIView!
    @IBOutlet weak var welcomeLabel: UILabel!
    
    var name: String?
    
//    var user = User(
//        login: "",
//        password: "",
//        person: Person(
//            name: "",
//            surname: "",
//            company: "",
//            department: "",
//            occupation: "",
//            bio: "",
//            photo: "")
//    )

    override func viewDidLoad() {
        super.viewDidLoad()
        setGradient(for: welcomeView)
        welcomeLabel.text = "My name is \(name ?? "")!"
    }
    
}
