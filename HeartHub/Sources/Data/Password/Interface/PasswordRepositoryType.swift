//
//  PasswordRepositoryType.swift
//  HeartHub
//
//  Created by 이태영 on 2023/09/22.
//

import Foundation
import RxSwift

protocol PasswordRepositoryType {
    func modifyPassword(current: String, new: String) -> Completable
}