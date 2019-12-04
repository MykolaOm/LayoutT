//
//  DashedLine.swift
//  LayoutTask
//
//  Created by Nikolas Omelianov on 03.12.2019.
//  Copyright © 2019 Nikolas Omelianov. All rights reserved.
//

import UIKit

class DashedLine: UIView { // firstly I thought that it was dashed that's why such name
    let numberOdDots: Int = 6
    let shapeLayer = CAShapeLayer()
    override init(frame: CGRect) {
        super.init(frame: frame)
        drawDottedLine()
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        drawDottedLine()
    }

    func drawDottedLine() {
        self.backgroundColor = superview?.backgroundColor
        
        let xPos = self.bounds.midX
        let minY = self.bounds.minY
        let maxY = self.bounds.maxY
        let topPoint = CGPoint(x: xPos, y: maxY)
        let bottomPoint = CGPoint(x: xPos, y: minY)
        let path = UIBezierPath()
        path.move(to: topPoint)
        path.addLine(to: bottomPoint)
        shapeLayer.strokeColor = UIColor.lightBlue.cgColor.copy(alpha: 0.5)
        shapeLayer.lineWidth = 1
        shapeLayer.path = path.cgPath
        self.layer.addSublayer(shapeLayer)
        let circleWidth: CGFloat = 6.0
        let longevity = maxY - minY
        let distance = longevity/CGFloat(numberOdDots)
        var y = minY
        for _ in 0..<numberOdDots-1 {
            self.addSubview(RoundDot(frame: CGRect(x: xPos, y: y, width: circleWidth, height: circleWidth)))
            y = y + distance + circleWidth + 1
        }
        self.addSubview(RoundDot(frame: CGRect(x: xPos, y: maxY - 2.0, width: 6, height: 6)))
    }
    
}
