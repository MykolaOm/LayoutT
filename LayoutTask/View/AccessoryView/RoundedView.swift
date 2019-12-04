//
//  RoundedView.swift
//  LayoutTask
//
//  Created by Nikolas Omelianov on 02.12.2019.
//  Copyright © 2019 Nikolas Omelianov. All rights reserved.
//

import UIKit

class RoundedView: UIView {
    override init(frame: CGRect) {
        super.init(frame:frame)
        roundedCorners()
    }
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        roundedCorners()
    }
        func roundedCorners() {
            layer.cornerRadius = self.bounds.height < 100 ? 13 : 5
    }
}
