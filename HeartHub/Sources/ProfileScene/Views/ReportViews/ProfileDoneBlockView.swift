//
//  ProfileDoneBlockView.swift
//  HeartHub
//
//  Created by 제민우 on 2023/08/20.
//

import UIKit

final class ProfileDoneBlockView: UIView {

    private lazy var doneBlockLabel: UILabel = {
        let label = UILabel()
        label.text = "정상적으로 차단되었습니다."
        label.numberOfLines = 1
        label.textAlignment = .center
        label.font = UIFont(name: "Pretendard-SemiBold", size: 24)
        label.adjustsFontForContentSizeCategory = true
        label.textColor = .black
        return label
    }()
    
    private let blockCheckImage: UIImageView = {
        var imgView = UIImageView()
        imgView.contentMode = .scaleAspectFit
        imgView.image = UIImage(named: "ReportCheck")
        return imgView
    }()
    
    private var bottomDoneBlockLabel: UILabel = {
        let label = UILabel()
        label.text = "더욱 완벽한 HeartHub가\n 되도록 하겠습니다."
        label.numberOfLines = 2
        label.textAlignment = .center
        label.font = UIFont(name: "Pretendard-SemiBold", size: 24)
        label.adjustsFontForContentSizeCategory = true
        label.textColor = .black
        return label
    }()
    
    private var containerView: UIView = {
        let view = UIView()
        view.backgroundColor = .white
        view.clipsToBounds = true
        view.layer.cornerRadius = 18
        return view
    }()
    
    var profileDoneBlockCloseButton = AlertButton(buttonColor: .white, borderColor: #colorLiteral(red: 0.9803773761, green: 0.1853338182, blue: 0.7394250631, alpha: 1), title: "닫기", titleColor: .black)
    
    // MARK: 뷰 초기화
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = UIColor(red: 0.067, green: 0.067, blue: 0.067, alpha: 0.2)
        configureSubviews()
        configureConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

// MARK: Configure Layout
extension ProfileDoneBlockView {
    // MARK: 제약
    private func configureSubviews() {
        [doneBlockLabel, blockCheckImage, bottomDoneBlockLabel, profileDoneBlockCloseButton].forEach {
            containerView.addSubview($0)
            $0.translatesAutoresizingMaskIntoConstraints = false
        }
        
        addSubview(containerView)
        containerView.translatesAutoresizingMaskIntoConstraints = false
    }
    
    private func configureConstraints() {
        
        let safeArea = safeAreaLayoutGuide

        NSLayoutConstraint.activate([
            containerView.centerXAnchor.constraint(equalTo: centerXAnchor),
            containerView.topAnchor.constraint(equalTo: safeArea.topAnchor, constant: 151),
            containerView.bottomAnchor.constraint(equalTo: safeArea.bottomAnchor, constant: -159),
            containerView.leadingAnchor.constraint(equalTo: safeArea.leadingAnchor, constant: 30),
            
            doneBlockLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            doneBlockLabel.topAnchor.constraint(equalTo: containerView.topAnchor, constant: 60),
            doneBlockLabel.leadingAnchor.constraint(equalTo: containerView.leadingAnchor),
            
            blockCheckImage.centerXAnchor.constraint(equalTo: centerXAnchor),
            blockCheckImage.topAnchor.constraint(equalTo: doneBlockLabel.bottomAnchor, constant: 25),
            blockCheckImage.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 87),

            bottomDoneBlockLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            bottomDoneBlockLabel.topAnchor.constraint(equalTo: blockCheckImage.bottomAnchor, constant: 25),
            bottomDoneBlockLabel.leadingAnchor.constraint(equalTo: containerView.leadingAnchor),
            
            profileDoneBlockCloseButton.centerXAnchor.constraint(equalTo: centerXAnchor),
            profileDoneBlockCloseButton.bottomAnchor.constraint(equalTo: containerView.bottomAnchor, constant: -30),
            profileDoneBlockCloseButton.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 30),
        ])
    }
}
