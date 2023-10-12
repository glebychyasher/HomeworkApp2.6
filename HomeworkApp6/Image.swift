//
//  Image.swift
//  HomeworkApp6
//
//  Created by Глеб Зобнин on 12.10.2023.
//

import UIKit

final class Image: UIImageView {
    
    override func layoutSubviews() {
        let radius = CGRectGetWidth(frame) / 2
        layer.cornerRadius = radius
    } 
}

