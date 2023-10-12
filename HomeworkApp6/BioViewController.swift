//
//  BioViewController.swift
//  HomeworkApp6
//
//  Created by Глеб Зобнин on 12.10.2023.
//

import UIKit

final class BioViewController: UIViewController {

    @IBOutlet weak var backgroundView: UIView!
    @IBOutlet weak var bioLabel: UILabel!
    @IBOutlet weak var navItem: UINavigationItem!
    
    var bio: String?
    var name: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar.tintColor = .white
        setGradient(for: backgroundView)
        navItem.title = (name ?? "Titleee") + "'s Bio"
        bioLabel.text = bio
    }

}
