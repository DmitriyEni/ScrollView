//
//  ViewController.swift
//  22_Scroll
//
//  Created by Dmitriy Eni on 21.04.2022.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var bottomButtonConstraint: NSLayoutConstraint!
    @IBOutlet weak var horizontalButtonConstraint: NSLayoutConstraint!
    @IBOutlet weak var contentView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func showLoginAction(_ sender: Any) {
        horizontalButtonConstraint.isActive = false
        bottomButtonConstraint.isActive = true
       
//        простая анимация движения кнопки и появления полей одновременно
//        UIView.animate(withDuration: 0.5) {
//            self.contentView.alpha = 1
//            self.view.layoutIfNeeded()
//        }
        
//        анимация падения кнопки после которой вызовется еще одна анимация появления полей
        UIView.animate(withDuration: 0.4) {
            self.view.layoutIfNeeded()
        } completion: { finish in
            if finish {
                UIView.animate(withDuration: 0.4) {
                    self.contentView.alpha = 1
                }
            }
        }
//
//        UIView.animate(withDuration: 0.4, delay: 0, options: .repeat) {
//            self.contentView.alpha = 1
//            self.view.layoutIfNeeded()
//        }

    }
}

