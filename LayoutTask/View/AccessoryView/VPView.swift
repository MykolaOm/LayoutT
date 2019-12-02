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
        progresView.progress = 0.7 //arcforrandom()
        progresView.progressTintColor = .blue//UIColor(red: 1.0, green: 0.21, blue: 0.33, alpha: 1)
        progresView.trackTintColor = UIColor.lightGray
        progresView.layer.cornerRadius = 6.5
        progresView.clipsToBounds = true
        progresView.transform = CGAffineTransform(rotationAngle: .pi / -2)
//        progresView.transform = CGAffineTransform(rotationAngle: .pi)
//        let modifierW: CGFloat = self.bounds.width > self.bounds.height ? self.contentView.bounds.width/5.0 : /self.contentView.bounds.height/0.5
//        let modofierH: CGFloat = self.bounds.width > self.bounds.height ? self.contentView.bounds.height/5.0 : self.contentView.bounds.width/5.0
        progresView.translatesAutoresizingMaskIntoConstraints = false
        progresView.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
        progresView.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
        progresView.widthAnchor.constraint(equalToConstant: self.bounds.height).isActive = true
        progresView.heightAnchor.constraint(equalToConstant: self.bounds.width).isActive = true
        self.layoutSubviews()
        self.backgroundColor = superview?.backgroundColor
    }
}
