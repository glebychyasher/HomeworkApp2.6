//
//  setGradient.swift
//  HomeworkApp6
//
//  Created by Глеб Зобнин on 12.10.2023.
//


import UIKit

func setGradient(for view: UIView) {
    let gradient = CAGradientLayer()
    gradient.frame = view.bounds
    gradient.colors = [UIColor.blue.cgColor, UIColor.purple.cgColor]
    view.layer.insertSublayer(gradient, at: 0)
}
