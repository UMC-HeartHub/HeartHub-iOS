//
//  ProfilePostImageCollectionViewCell.swift
//  HeartHub
//
//  Created by 제민우 on 2023/08/01.
//

import UIKit

class ProfilePostCollectionViewCell: UICollectionViewCell {

    let postImageView: UIImageView = {
        let image = UIImageView()
        image.contentMode = .scaleAspectFill
        return image
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configureImageView()
        setConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configureImageView() {
        self.contentView.addSubview(postImageView)
    }
    
    func setConstraints() {
        postImageView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            postImageView.centerXAnchor.constraint(equalTo: self.contentView.centerXAnchor),
            postImageView.centerYAnchor.constraint(equalTo: self.contentView.centerYAnchor),
            postImageView.topAnchor.constraint(equalTo: self.contentView.topAnchor),
            postImageView.leadingAnchor.constraint(equalTo: self.contentView.leadingAnchor)
        ])
    }
}
