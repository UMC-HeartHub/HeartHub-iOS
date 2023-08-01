//
//  ProfileFloatingButton.swift
//  HeartHub
//
//  Created by 제민우 on 2023/08/01.
//

import UIKit

final class ProfileFloatingButton: UIView {
    private let menuButton: UIButton = {
        let button = UIButton()
        button.setImage(UIImage(named: "Pencil"), for: .normal)
        return button
    }()
    
    private let postButton: UIButton = {
        let button = UIButton()
        button.setImage(UIImage(named: "Pencil"), for: .normal)
        return button
    }()
    
    private let rankButton: UIButton = {
        let button = UIButton()
        button.setImage(UIImage(named: "Pencil"), for: .normal)
        return button
    }()
    
    private let floatButtonStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.alignment = .fill
        stackView.distribution = .fill
        stackView.spacing = 8
        return stackView
    }()
    
    init() {
        super.init(frame: .zero)
        configureSubview()
        configureLayout()
        configureAction()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

// MARK: Configure Action
extension ProfileFloatingButton {
    private func configureAction() {
        menuButton.addTarget(
            self,
            action: #selector(tapMenuButton(_:)),
            for: .touchUpInside
        )
    }
    
    @objc
    private func tapMenuButton(_ sender: UIButton) {
        UIView.animate(
            withDuration: 0.3,
            delay: 0,
            usingSpringWithDamping: 0.5,
            initialSpringVelocity: 0.5
        ) {
            self.floatButtonStackView.arrangedSubviews.forEach {
                $0.isHidden.toggle()
            }
        }
    }
}

// MARK: Configure UI
extension ProfileFloatingButton {
    private func configureSubview() {
        [rankButton, postButton].forEach {
            floatButtonStackView.addArrangedSubview($0)
            $0.isHidden = true
        }
        
        [floatButtonStackView, menuButton].forEach {
            addSubview($0)
            $0.translatesAutoresizingMaskIntoConstraints = false
        }
    }
    
    private func configureLayout() {
        let safeArea = safeAreaLayoutGuide
        
        NSLayoutConstraint.activate([
            // MARK: menuButton Constraint
            menuButton.topAnchor.constraint(
                equalTo: floatButtonStackView.bottomAnchor,
                constant: 8
            ),
            menuButton.leadingAnchor.constraint(
                equalTo: safeArea.leadingAnchor
            ),
            menuButton.trailingAnchor.constraint(
                equalTo: safeArea.trailingAnchor
            ),
            menuButton.bottomAnchor.constraint(
                equalTo: safeArea.bottomAnchor
            ),
            
            // MARK: floatButtonStackView Constraint
            floatButtonStackView.topAnchor.constraint(
                equalTo: safeArea.topAnchor
            ),
            floatButtonStackView.leadingAnchor.constraint(
                equalTo: safeArea.leadingAnchor
            ),
            floatButtonStackView.trailingAnchor.constraint(
                equalTo: safeArea.trailingAnchor
            ),
        ])
    }
}
