//
//  TriangleVIew.swift
//  LayoutTask
//
//  Created by Nikolas Omelianov on 04.12.2019.
//  Copyright © 2019 Nikolas Omelianov. All rights reserved.
//

import UIKit

class TriangleView : UIView { // TODO: popup to chart
    
    let shapeLayer = CAShapeLayer()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
    }
    func commonInit() {
        self.backgroundColor = .clear
        let path = UIBezierPath()
        //triangle
        path.move(to: CGPoint(x: self.bounds.midX/2, y:  self.bounds.midY-10))
        path.addLine(to: CGPoint(x: self.bounds.minX, y: self.bounds.midY))
        path.addLine(to: CGPoint(x: self.bounds.midX/2, y:  self.bounds.midY+10))
        
        //square
        path.addLine(to: CGPoint(x: self.bounds.midX/2, y: self.bounds.maxY))
        path.addLine(to: CGPoint(x: self.bounds.maxX, y:  self.bounds.maxY))
        
        path.addLine(to: CGPoint(x: self.bounds.maxX, y:  self.bounds.minY))
        path.addLine(to: CGPoint(x: self.bounds.midX/2, y:  self.bounds.minY))
        path.addLine(to: CGPoint(x: self.bounds.midX/2, y:  self.bounds.midY-10))
        
        shapeLayer.strokeColor = UIColor.lightBlue.cgColor.copy(alpha: 0.0)
        
        path.close()
        shapeLayer.lineWidth = 1
        shapeLayer.path = path.cgPath
        shapeLayer.fillColor = UIColor.white.cgColor
        self.layer.addSublayer(shapeLayer)  
    }
}
