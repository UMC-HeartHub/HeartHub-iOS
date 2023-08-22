//
//  ConnectCheckPopUpView.swift
//  HeartHub
//
//  Created by 제민우 on 2023/08/15.
//

import UIKit

final class LogoutPopupView: UIView {
    
    // MARK: 레이블
    private let logoutConfirmLabel: UILabel = {
        let label = UILabel()
        label.text = "로그아웃 하시겠습니까?"
        label.numberOfLines = 1
        label.textAlignment = .center
        label.font = UIFont(name: "Pretendard-SemiBold", size: 24)
        label.textColor = .black
        return label
    }()

    
    // MARK: 닫기버튼
    var nobtn: UIButton = {
        let btn = UIButton(type: .custom)
        btn.backgroundColor = .white
        btn.layer.borderWidth = 1
        btn.layer.cornerRadius = 18
        btn.layer.borderColor = #colorLiteral(red: 0.9803773761, green: 0.1853338182, blue: 0.7394250631, alpha: 1)
        
        btn.setTitle("취소", for: .normal)
        btn.titleLabel?.font = UIFont.init(name: "Pretendard-Regular", size: 14)
        btn.titleLabel?.textAlignment = .center
        btn.setTitleColor(UIColor(red: 0.067, green: 0.067, blue: 0.067, alpha: 1), for: .normal)
        btn.sizeToFit()
        btn.titleLabel?.adjustsFontSizeToFitWidth = true
        btn.titleLabel?.numberOfLines = 1
        
        btn.layer.shadowColor = UIColor(red: 0.98, green: 0.184, blue: 0.741, alpha: 0.25).cgColor
        btn.layer.shadowOpacity = 1.0
        btn.layer.shadowOffset = CGSize(width: 0, height: 4)
        btn.layer.shadowRadius = 6
        
        return btn
    }()
    
    var yesbtn: UIButton = {
        let btn = UIButton(type: .custom)
        btn.backgroundColor = .white
        btn.layer.borderWidth = 1
        btn.layer.cornerRadius = 18
        btn.layer.borderColor = #colorLiteral(red: 0.9803773761, green: 0.1853338182, blue: 0.7394250631, alpha: 1)
        
        btn.setTitle("확인", for: .normal)
        btn.titleLabel?.font = UIFont.init(name: "Pretendard-Regular", size: 14)
        btn.titleLabel?.textAlignment = .center
        btn.setTitleColor(UIColor(red: 0.067, green: 0.067, blue: 0.067, alpha: 1), for: .normal)
        btn.sizeToFit()
        btn.titleLabel?.adjustsFontSizeToFitWidth = true
        btn.titleLabel?.numberOfLines = 1
        
        btn.layer.shadowColor = UIColor(red: 0.98, green: 0.184, blue: 0.741, alpha: 0.25).cgColor
        btn.layer.shadowOpacity = 1.0
        btn.layer.shadowOffset = CGSize(width: 0, height: 4)
        btn.layer.shadowRadius = 6
        
        return btn
    }()
    
    private lazy var btnStackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [nobtn, yesbtn])
        stackView.axis = .horizontal
        stackView.spacing = 30
        stackView.alignment = .fill
        stackView.distribution = .fillEqually
        return stackView
    }()
    
    
    private var containerView: UIView = {
        let view = UIView()
        view.backgroundColor = .white
        view.clipsToBounds = true
        view.layer.cornerRadius = 18
        return view
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = UIColor(red: 0.067, green: 0.067, blue: 0.067, alpha: 0.2)
        configureSubviews()
        configureLayout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
//        nobtn.layer.cornerRadius = nobtn.frame.height / 2
//        yesbtn.layer.cornerRadius = yesbtn.frame.height / 2

    }
}

// MARK: Configure Layout
extension LogoutPopupView {
    private func configureSubviews() {
        [logoutConfirmLabel,
         nobtn,
         yesbtn].forEach {
            containerView.addSubview($0)
            $0.translatesAutoresizingMaskIntoConstraints = false
        }
        
        addSubview(containerView)
        containerView.translatesAutoresizingMaskIntoConstraints = false
    }
    
    private func configureLayout() {
        
        let safeArea = safeAreaLayoutGuide

        NSLayoutConstraint.activate([
            // MARK: containerView Constraints
            containerView.centerXAnchor.constraint(equalTo: centerXAnchor),
            containerView.centerYAnchor.constraint(equalTo: centerYAnchor),
            containerView.topAnchor.constraint(equalTo: safeArea.topAnchor, constant: 177),
            containerView.leadingAnchor.constraint(equalTo: safeArea.leadingAnchor, constant: 30),

            // MARK: connectLoverLabel Constraints
            logoutConfirmLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            logoutConfirmLabel.topAnchor.constraint(equalTo: containerView.topAnchor, constant: 60),
            logoutConfirmLabel.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 48),

            // MARK: connectPopUpButtonStackView Constraints
            btnStackView.heightAnchor.constraint(equalTo: containerView.heightAnchor, multiplier: 0.09),
            btnStackView.centerXAnchor.constraint(equalTo: centerXAnchor),
            btnStackView.bottomAnchor.constraint(equalTo: containerView.bottomAnchor, constant: -48),
            btnStackView.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 56)
        ])
    }
}

