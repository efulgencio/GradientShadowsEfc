//
//  ViewController.swift
//  GradientShadowsEfc
//
//  Created by eduardo fulgencio on 04/02/2020.
//  Copyright © 2020 Eduardo Fulgencio Comendeiro. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var viewStyle: UIView!
    
    lazy var gradientLayer: CAGradientLayer = {
      return CAGradientLayer()
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setupGradientLayer()
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
        viewStyle.apply()
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        gradientLayer.frame = view.bounds
    }
    
    func setupGradientLayer() {
        gradientLayer.colors = [UIColor.red.cgColor, UIColor.green.cgColor]
        gradientLayer.startPoint = CGPoint(x:0.0 , y:0.0)
        gradientLayer.endPoint = CGPoint(x:1.0 , y:1.0)
       // view.layer.addSublayer(gradientLayer)
        view.layer.insertSublayer(gradientLayer, at: 0)
    }



}

