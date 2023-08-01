//
//  ProfileViewController.swift
//  HeartHub
//
//  Created by 제민우 on 2023/08/01.
//

import UIKit

class ProfileViewController: UIViewController {

    private lazy var userPostCollectionView = UICollectionView(
        frame: .zero,
        collectionViewLayout: generateCollectionViewLayout()
    )
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureSubview()
        configureLayout()
    }
}

// MARK: userPostCollectionView CompositionalLayout Implementation
extension ProfileViewController {
    private func generateCollectionViewLayout() -> UICollectionViewCompositionalLayout {
        let itemSize = NSCollectionLayoutSize(
            widthDimension: .fractionalWidth(1/3),
            heightDimension: .fractionalWidth(1/3)
        )
        let item = NSCollectionLayoutItem(layoutSize: itemSize)
        
        let groupSize = NSCollectionLayoutSize(
            widthDimension: .fractionalWidth(1.0),
            heightDimension: .fractionalWidth(1/3)
        )
        
        let group = NSCollectionLayoutGroup.horizontal(layoutSize: groupSize, subitems: [item])
        
        let section = NSCollectionLayoutSection(group: group)
        
        let layout = UICollectionViewCompositionalLayout(section: section)
        
        return layout
    }
}

// MARK: Configure UI
extension ProfileViewController {
    private func configureSubview() {
        [userPostCollectionView,
        ].forEach {
            view.addSubview($0)
            $0.translatesAutoresizingMaskIntoConstraints = false
        }
    }
    
    private func configureLayout() {
        NSLayoutConstraint.activate([
            // MARK: userPostCollectionView Constraints
            userPostCollectionView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 100),
            userPostCollectionView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: 0),
            userPostCollectionView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            userPostCollectionView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor)
        ])
    }
}
