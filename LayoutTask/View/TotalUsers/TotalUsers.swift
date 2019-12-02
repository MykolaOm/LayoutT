//
//  TotalUsers.swift
//  LayoutTask
//
//  Created by Nikolas Omelianov on 02.12.2019.
//  Copyright © 2019 Nikolas Omelianov. All rights reserved.
//

import UIKit

class TotalUsers: UIView {

    let kCONTENT_XIB_NAME = "TotalUsers"
             @IBOutlet var contentView: UIView!
             
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
             }

}
