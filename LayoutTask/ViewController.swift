//
//  ViewController.swift
//  LayoutTask
//
//  Created by Nikolas Omelianov on 01.12.2019.
//  Copyright © 2019 Nikolas Omelianov. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UIPopoverPresentationControllerDelegate {

    // NOTE: USE SHAKE GESTURE TO GO BACK
    // PS. HOTKEY --> CONTROL + COMMAND + Z 
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
    }

    @IBAction func popRegisterView(_ sender: UIButton) {
        let view = Register(frame: self.view.bounds)
        self.view.addSubview(view)
    }
    @IBAction func popDashboardView(_ sender: UIButton) {
        let view = Dashboard(frame: self.view.bounds)
        self.view.addSubview(view)
    }
    @IBAction func popTotalUsersVIew(_ sender: UIButton) {
        //TODO: third screen
        let view = TotalUsers(frame: self.view.bounds)
        self.view.addSubview(view)
    }
    override func becomeFirstResponder() -> Bool {
        return true
    }

    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?){
        if motion == .motionShake {
            self.view.subviews.forEach { view in
                if !(view is UIStackView) {
                    view.removeFromSuperview()
                }
            }
        }
    }
}

