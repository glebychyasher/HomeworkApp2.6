//
//  InformationViewController.swift
//  HomeworkApp6
//
//  Created by Глеб Зобнин on 12.10.2023.
//

import UIKit

final class InformationViewController: UIViewController {
    
    var user: User?
    
    @IBOutlet weak var backgroundView: UIView!
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var surnameLabel: UILabel!
    @IBOutlet weak var companyLabel: UILabel!
    @IBOutlet weak var departmentLabel: UILabel!
    @IBOutlet weak var occupationLabel: UILabel!
    @IBOutlet weak var profileImage: Image!
    
    @IBOutlet weak var navItem: UINavigationItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setGradient(for: backgroundView)
        navItem.title = user?.person.name ?? "Titleee"
        profileImage.image = UIImage(named: user?.person.photo ?? "unknown")
        nameLabel.text = user?.person.name
        surnameLabel.text = user?.person.surname
        companyLabel.text = user?.person.company
        departmentLabel.text = user?.person.department
        occupationLabel.text = user?.person.occupation
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let bioVC = segue.destination as? BioViewController else { return }
        bioVC.bio = user?.person.bio
        bioVC.name = user?.person.name
    }
}

