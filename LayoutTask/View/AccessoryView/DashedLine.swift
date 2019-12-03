//
//  DashedLine.swift
//  LayoutTask
//
//  Created by Nikolas Omelianov on 03.12.2019.
//  Copyright © 2019 Nikolas Omelianov. All rights reserved.
//

import UIKit

class DashedLine: UIView {

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
        let shapeLayer = CAShapeLayer()
        shapeLayer.strokeColor = UIColor.lightBlue.cgColor
        shapeLayer.lineWidth = 1
        shapeLayer.lineDashPattern = [7, 3]
        let topPoint = CGPoint(x: self.bounds.midX, y: self.bounds.maxY)
        let bottomPoint = CGPoint(x: self.bounds.midX, y: self.bounds.minX)
        let path = CGMutablePath()
        path.addLines(between: [topPoint,bottomPoint])
        shapeLayer.path = path
        self.layer.addSublayer(shapeLayer)
    }
}
