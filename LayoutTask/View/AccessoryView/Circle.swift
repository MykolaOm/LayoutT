//
//  Circle.swift
//  LayoutTask
//
//  Created by Nikolas Omelianov on 01.12.2019.
//  Copyright © 2019 Nikolas Omelianov. All rights reserved.
//

import UIKit

// TODO: Draw half circle with roundedcup
class Circle: UIView {
    
    let shapeLayer = CAShapeLayer()
    override init(frame: CGRect) {
        super.init(frame: frame)
        drawCircle()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        drawCircle()
    }

    func drawCircle(){
        let center = CGPoint(x: self.bounds.midX, y: self.bounds.midY)
        self.backgroundColor = superview?.backgroundColor
        // create my track layer
        let trackLayer = CAShapeLayer()
        
        let circularPath = UIBezierPath(arcCenter: center, radius: self.frame.width/2.5, startAngle: -CGFloat.pi / 2, endAngle: 1.5 * CGFloat.pi, clockwise: true)
        trackLayer.path = circularPath.cgPath
        
        trackLayer.strokeColor = UIColor.specialGray.cgColor
        trackLayer.lineWidth = 8
        trackLayer.fillColor = UIColor.clear.cgColor
        trackLayer.lineCap = CAShapeLayerLineCap.round
        self.layer.addSublayer(trackLayer)
        shapeLayer.path = circularPath.cgPath
        
//        shapeLayer.strokeColor = UIColor.blue.cgColor 31 142 241
        shapeLayer.strokeColor = UIColor.lightBlue.cgColor//UIColor(displayP3Red: 31.0/255, green: 142/255, blue: 241/255, alpha: 1).cgColor
        shapeLayer.lineWidth = 12
        shapeLayer.fillColor = UIColor.clear.cgColor
        shapeLayer.lineCap = CAShapeLayerLineCap.round
        
        shapeLayer.strokeEnd = 0.5
        
        self.layer.addSublayer(shapeLayer)
        let label = UILabel(frame: self.bounds)
        label.textAlignment = .center
        label.text = "50%"
        self.addSubview(label)
    }
}
