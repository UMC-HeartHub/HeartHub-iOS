//
//  Reusable.swift
//  HeartHub
//
//  Created by 이태영 on 2023/07/18.
//

import UIKit

protocol Reusable: AnyObject { }

extension Reusable where Self: UIView {
    static var reuseIdentifier: String {
        return String(describing: self)
    }
}

extension UICollectionViewCell: Reusable { }
