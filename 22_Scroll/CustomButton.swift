//
//  CustomButton.swift
//  22_Scroll
//
//  Created by Dmitriy Eni on 21.04.2022.
//

import Foundation
import UIKit

final class CustomButton: UIButton {
    override var isTouchInside: Bool {
        changeBorder()
        return true
    }
    
    private func changeBorder() {
        self.layer.cornerRadius = 8
        
        UIView.animate(withDuration: 0.25) {
            self.layer.borderColor = UIColor.systemPink.withAlphaComponent(0.5).cgColor
            self.layer.borderWidth = 1
            self.backgroundColor = .systemPink.withAlphaComponent(0.2)
            self.tintColor = .systemBlue.withAlphaComponent(0.2)
        } completion: { isFinished in
            UIView.animate(withDuration: 0.15) {
                self.layer.borderColor = nil
                self.layer.borderWidth = 0
                self.backgroundColor = .clear
                self.tintColor = .systemBlue
            }
        }

    }
}
