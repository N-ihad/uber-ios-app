//
//  UITextField.swift
//  Uber-clone
//
//  Created by Nihad on 11/5/21.
//

import Foundation
import UIKit

extension UITextField {
    static func makeTextField(withPlaceholder placeholder: String, isSecureTextEntry: Bool) -> UITextField {
        let textField = UITextField()
        textField.borderStyle = .none
        textField.font = .systemFont(ofSize: 16)
        textField.textColor = .white
        textField.keyboardAppearance = .dark
        textField.isSecureTextEntry = isSecureTextEntry
        textField.attributedPlaceholder = NSAttributedString(string: placeholder,
                                                             attributes: [.foregroundColor: UIColor.lightGray])
        return textField
    }
}
