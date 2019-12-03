//
//  UIViewExtension.swift
//  LayoutTask
//
//  Created by Nikolas Omelianov on 01.12.2019.
//  Copyright © 2019 Nikolas Omelianov. All rights reserved.
//

import UIKit

extension UIView
{
    func fixInView(_ container: UIView!) -> Void{
        self.translatesAutoresizingMaskIntoConstraints = false;
        self.frame = container.frame;
        container.addSubview(self);
        NSLayoutConstraint(item: self, attribute: .leading, relatedBy: .equal, toItem: container, attribute: .leading, multiplier: 1.0, constant: 0).isActive = true
        NSLayoutConstraint(item: self, attribute: .trailing, relatedBy: .equal, toItem: container, attribute: .trailing, multiplier: 1.0, constant: 0).isActive = true
        NSLayoutConstraint(item: self, attribute: .top, relatedBy: .equal, toItem: container, attribute: .top, multiplier: 1.0, constant: 0).isActive = true
        NSLayoutConstraint(item: self, attribute: .bottom, relatedBy: .equal, toItem: container, attribute: .bottom, multiplier: 1.0, constant: 0).isActive = true
    }

    
}

extension UIColor {
    struct lightBlue {
        static let cgColor = UIColor(displayP3Red: 31.0/255, green: 142/255, blue: 241/255, alpha: 1).cgColor
       static let color = UIColor(displayP3Red: 31.0/255, green: 142/255, blue: 241/255, alpha: 1)
    }
    struct specialGray {
        static let cgColor = UIColor(displayP3Red: 57.0/255, green: 58/255, blue: 71/255, alpha: 1).cgColor
        static let color = UIColor(displayP3Red: 57.0/255, green: 58/255, blue: 71/255, alpha: 1)
    }
}

//TODO: @IBDesignable to set corner radius
@IBDesignable extension UIButton {

    @IBInspectable var borderWidth: CGFloat {
        set {
            layer.borderWidth = newValue
        }
        get {
            return layer.borderWidth
        }
    }

    @IBInspectable var cornerRadius: CGFloat {
        set {
            layer.cornerRadius = newValue
        }
        get {
            return layer.cornerRadius
        }
    }

    @IBInspectable var borderColor: UIColor? {
        set {
            guard let uiColor = newValue else { return }
            layer.borderColor = uiColor.cgColor
        }
        get {
            guard let color = layer.borderColor else { return nil }
            return UIColor(cgColor: color)
        }
    }
}
