//
//  NavigationController.swift
//  HomeworkApp6
//
//  Created by Глеб Зобнин on 12.10.2023.
//

import UIKit

final class NavigationController: UINavigationController {
    var name: String?

    override func viewDidLoad() {
        super.viewDidLoad()
        let appearance = UINavigationBarAppearance()
        appearance.configureWithTransparentBackground()
        appearance.largeTitleTextAttributes = [.foregroundColor: UIColor.white, .backgroundColor: UIColor.clear]
        
        navigationBar.standardAppearance = appearance
        navigationBar.scrollEdgeAppearance = appearance
        
        //Можно ли глобально поменять цвет всех элементов NavigationController и для других экранов, чтобы bar button'ы тоже окрашивались?
    }
}
