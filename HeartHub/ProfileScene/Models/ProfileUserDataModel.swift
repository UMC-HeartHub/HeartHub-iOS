//
//  ProfileUserDataModel.swift
//  HeartHub
//
//  Created by 제민우 on 2023/08/01.
//

import UIKit

struct ProfileUserDataModel {
    var profileImage: UIImage?
    var profileNickName: String
    var profileInformaition: String?
}

let userProfileMockData = [
    ProfileUserDataModel(profileImage: UIImage(named: "TestImage"),
             profileNickName: "HeartHub",
             profileInformaition: "HeartHub의 프로필 페이지 설명란"
            )
]
