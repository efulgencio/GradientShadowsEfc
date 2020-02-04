//
//  File.swift
//  CustomCONTROLefc
//
//  Created by eduardo fulgencio on 04/02/2020.
//  Copyright © 2020 Eduardo Fulgencio Comendeiro. All rights reserved.
//

import UIKit

extension UIView {
    
    func apply() {
        self.layer.backgroundColor = UIColor.blue.cgColor
        self.layer.cornerRadius = CGFloat(10.0)
        self.layer.borderWidth = CGFloat(5.0)
        self.layer.borderColor = UIColor.orange.cgColor
        self.layer.shadowOpacity = 0.7
        self.layer.shadowRadius = CGFloat(15.0)
        self.layer.shadowOffset = CGSize(width: CGFloat(-15), height: CGFloat(15))
    }
}
