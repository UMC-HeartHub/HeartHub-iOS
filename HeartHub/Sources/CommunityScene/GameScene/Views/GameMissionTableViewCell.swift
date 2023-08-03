//
//  GameMissionTableViewCell.swift
//  HeartHub
//
//  Created by 제민우 on 2023/08/02.
//

import UIKit

class GameMissionTableViewCell: UITableViewCell {

    private lazy var gameMissionContainerShadowView: UIView = {
         let view = UIView()
         view.layer.shadowColor = UIColor(red: 0.0, green: 0.0, blue: 0.0, alpha: 0.1).cgColor
         view.layer.shadowOpacity = 1.0
         view.layer.shadowOffset = CGSize(width: 0, height: 4)
         view.layer.shadowRadius = 4
         view.addSubview(gameMissionContainverView)
         return view
     }()
    
    private var gameMissionContainverView: UIView = {
        let view = UIView()
        view.backgroundColor = .white
        view.layer.cornerRadius = 20
        return view
    }()

    var gameMissionLabel: UILabel = {
       let label = UILabel()
        label.font = UIFont(name: "DungGeunMo", size: 16)
        label.textAlignment = .left
        label.numberOfLines = 2
        return label
    }()

    let gameMissionButton: UIButton = {
        let button = UIButton()
        button.setImage(UIImage(named: "MissionCheckedButtonImage"), for: .normal)
        button.setImage(UIImage(named: "MissionUnCheckedButtonImage"), for: .selected)
        button.contentMode = .center
        return button
    }()

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: .default, reuseIdentifier: reuseIdentifier)
        configureSubview()
        configureLayout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

// MARK: Configure UI
extension GameMissionTableViewCell {
    
    private func configureSubview() {
        self.backgroundColor = .clear

        [gameMissionButton, gameMissionLabel].forEach {
            gameMissionContainverView.addSubview($0)
            $0.translatesAutoresizingMaskIntoConstraints = false
        }
        self.contentView.addSubview(gameMissionContainerShadowView)
        gameMissionContainerShadowView.translatesAutoresizingMaskIntoConstraints = false
        gameMissionContainverView.translatesAutoresizingMaskIntoConstraints = false
    }
    
    private func configureLayout() {
        NSLayoutConstraint.activate([
            
            // MARK: gameMissionContainerShadowView Constraints
//            gameMissionContainerShadowView.heightAnchor.constraint(equalTo: self.contentView.heightAnchor),
            gameMissionContainerShadowView.widthAnchor.constraint(equalTo: self.contentView.widthAnchor),
            gameMissionContainerShadowView.topAnchor.constraint(equalTo: self.contentView.topAnchor, constant: 12),
            gameMissionContainerShadowView.bottomAnchor.constraint(equalTo: self.contentView.bottomAnchor, constant: -12),
            gameMissionContainerShadowView.leadingAnchor.constraint(equalTo: self.contentView.leadingAnchor),
            
            // MARK: gameMissionContainerView Constraints
            gameMissionContainverView.topAnchor.constraint(equalTo: gameMissionContainerShadowView.topAnchor),
            gameMissionContainverView.bottomAnchor.constraint(equalTo: gameMissionContainerShadowView.bottomAnchor),
            gameMissionContainverView.leadingAnchor.constraint(equalTo: gameMissionContainerShadowView.leadingAnchor),
            gameMissionContainverView.trailingAnchor.constraint(equalTo: gameMissionContainerShadowView.trailingAnchor),

            
            // MARK: gameMissionButton Constraints
            gameMissionButton.centerYAnchor.constraint(equalTo: gameMissionContainverView.centerYAnchor),
            gameMissionButton.widthAnchor.constraint(equalTo: gameMissionButton.heightAnchor),
            gameMissionButton.topAnchor.constraint(equalTo: gameMissionContainverView.topAnchor, constant: 24),
            gameMissionButton.leadingAnchor.constraint(equalTo: gameMissionContainverView.leadingAnchor, constant: 20),
            
            // MARK: gameMissionLabel Constraints
            gameMissionLabel.widthAnchor.constraint(equalTo: gameMissionContainverView.widthAnchor, multiplier: 0.74),
            gameMissionLabel.centerYAnchor.constraint(equalTo: gameMissionContainverView.centerYAnchor),
            gameMissionLabel.leadingAnchor.constraint(equalTo: gameMissionButton.trailingAnchor, constant: 18),
            gameMissionLabel.trailingAnchor.constraint(equalTo: gameMissionContainverView.trailingAnchor, constant: -20)
        ])
    }
}
