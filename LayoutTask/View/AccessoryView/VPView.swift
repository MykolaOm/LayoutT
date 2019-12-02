//
//  VPView.swift
//  LayoutTask
//
//  Created by Nikolas Omelianov on 02.12.2019.
//  Copyright © 2019 Nikolas Omelianov. All rights reserved.
//

import UIKit

class VPVIew: UIView {
    let kCONTENT_XIB_NAME = "VPVIew"
    @IBOutlet var contentView: UIView!
    
    @IBOutlet weak var progresView: UIProgressView!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
    }
    
    func commonInit() {
        Bundle.main.loadNibNamed(kCONTENT_XIB_NAME, owner: self, options: nil)
        contentView.fixInView(self)

        progresView.progress = Float.random(in: 0 ..< 1)
        progresView.progressTintColor = UIColor.lightBlue.color
        progresView.trackTintColor = UIColor.specialGray.color
        progresView.layer.cornerRadius = 6.5
        progresView.clipsToBounds = true
        progresView.transform = CGAffineTransform(rotationAngle: .pi / -2)
        progresView.translatesAutoresizingMaskIntoConstraints = false
        progresView.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
        progresView.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
        progresView.widthAnchor.constraint(equalToConstant: self.bounds.height).isActive = true
        progresView.heightAnchor.constraint(equalToConstant: 8).isActive = true
        self.backgroundColor = .clear
        self.contentView.backgroundColor = .clear
    }
}
