//
//  DropDownButton.swift
//  LayoutTask
//
//  Created by Nikolas Omelianov on 03.12.2019.
//  Copyright © 2019 Nikolas Omelianov. All rights reserved.
//

import UIKit

class DropDownButton: UIButton {
        
    override init(frame: CGRect) {
        super.init(frame: frame)
         setUp()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder:coder)
         setUp()
    }
    func setUp(){
        self.imageView?.image = #imageLiteral(resourceName: "Polygon")
            layoutSubviews()
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        if imageView != nil {
            imageEdgeInsets = UIEdgeInsets(top: 5, left: (bounds.width - 35), bottom: 5, right: 5)
            titleEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: (imageView?.frame.width)!)
        }
    }
}
