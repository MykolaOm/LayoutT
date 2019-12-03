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
        let trackLayer = CAShapeLayer()
        let radius = self.frame.width/2.5
        let circularPath = UIBezierPath(arcCenter: center, radius: radius, startAngle: -CGFloat.pi / 2, endAngle: 1.5 * CGFloat.pi, clockwise: true)
        trackLayer.path = circularPath.cgPath
        var isBigCircle = self.bounds.width > 70
        trackLayer.strokeColor = UIColor.specialGray.cgColor
        trackLayer.lineWidth = 8
        trackLayer.fillColor = UIColor.clear.cgColor
        trackLayer.lineCap = CAShapeLayerLineCap.round
        self.layer.addSublayer(trackLayer)
        shapeLayer.path = circularPath.cgPath
        shapeLayer.strokeColor = UIColor.lightBlue.cgColor
        shapeLayer.lineWidth = isBigCircle ? 12 : 8
        shapeLayer.fillColor = UIColor.clear.cgColor
        shapeLayer.lineCap = CAShapeLayerLineCap.round
        shapeLayer.strokeEnd = 0.5
        self.layer.addSublayer(shapeLayer)
        let label = UILabel(frame: self.bounds)
        label.textAlignment = .center
        label.numberOfLines = 2
        
        let size: CGFloat = isBigCircle ? 20.0 : 10.0
        let mainTextFont = UIFont(name: "Poppins-Regular", size: size)
        let mainText = NSMutableAttributedString(string: "50%", attributes: [NSAttributedString.Key.font : mainTextFont])
        if isBigCircle {
            let additionalFont = UIFont(name: "Poppins-Regular", size: size/2)
            let additional = NSAttributedString(string: "\nUser", attributes: [NSAttributedString.Key.font : additionalFont])
            mainText.append(additional)
        }
        label.attributedText = mainText
        self.addSubview(label)
    }
}
