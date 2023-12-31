//
//  userInfoTextFieldView.swift
//  HeartHub
//
//  Created by 제민우 on 2023/08/07.
//

import UIKit

final class HeartHubUserInfoInputTextField: UITextField {
    private let insets: UIEdgeInsets = UIEdgeInsets(top: 6, left: 27, bottom: 6, right: 90)
    
    init(
        placeholder: String,
        keyboardType: UIKeyboardType,
        isSecureTextEntry: Bool,
        isHidden: Bool = false
    ) {
        super.init(frame: .zero)
        
        attributedPlaceholder = NSAttributedString(
            string: placeholder,
            attributes: [NSAttributedString.Key.foregroundColor: #colorLiteral(red: 0.07, green: 0.07, blue: 0.07, alpha: 0.5)]
        )
        self.keyboardType = keyboardType
        self.isSecureTextEntry = isSecureTextEntry
        self.isHidden = isHidden
        
        configureUserInfoTextField()
    }
        
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func textRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.inset(by: insets)
    }
    
    override func editingRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.inset(by: insets)
    }
}

// MARK: Configure TextField
extension HeartHubUserInfoInputTextField {
    private func configureUserInfoTextField() {
        backgroundColor = .clear
        textColor = #colorLiteral(red: 0.07, green: 0.07, blue: 0.07, alpha: 0.5)
        autocapitalizationType = .none
        autocorrectionType = .no
        spellCheckingType = .no
        font = UIFont(name: "Pretendard-Regular", size: 14)
        textAlignment = .left
        
        clipsToBounds = true
        layer.cornerRadius = 18
        layer.borderColor = UIColor.systemGray4.cgColor
        layer.borderWidth = 1
    }
}
