//
//  RoundDots.swift
//  LayoutTask
//
//  Created by Nikolas Omelianov on 03.12.2019.
//  Copyright © 2019 Nikolas Omelianov. All rights reserved.
//

import UIKit

class RoundDot: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
//        self.backgroundColor = UIColor.clear
        maskCircle()
    }
        
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        maskCircle()
    }
    
    func maskCircle() {
        self.center.x -= self.bounds.width/2
        self.backgroundColor = UIColor.lightBlue.color
        self.layer.cornerRadius = self.frame.height / 2
        self.layer.masksToBounds = false
        self.clipsToBounds = true
        layoutIfNeeded()
    }
}
