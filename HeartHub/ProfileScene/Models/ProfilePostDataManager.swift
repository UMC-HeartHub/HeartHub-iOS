//
//  ProfilePostDataManager.swift
//  HeartHub
//
//  Created by 제민우 on 2023/08/01.
//

import UIKit

final class ProfilePostDataManager {
    private var postDataArray: [ProfilePostDataModel] = []
    
    func configureProfilePostData() {
        postDataArray = [
            ProfilePostDataModel(postImage: UIImage(named: "HeartIcon3:3")),
            ProfilePostDataModel(postImage: UIImage(named: "HeartIcon2:3")),
            ProfilePostDataModel(postImage: UIImage(named: "HeartIcon2:3")),
            ProfilePostDataModel(postImage: UIImage(named: "HeartIcon1:3")),
            ProfilePostDataModel(postImage: UIImage(named: "HeartIcon2:3")),
            ProfilePostDataModel(postImage: UIImage(named: "HeartIcon3:3")),
            ProfilePostDataModel(postImage: UIImage(named: "HeartIcon2:3")),
            ProfilePostDataModel(postImage: UIImage(named: "HeartIcon1:3"))
        ]
    }
    
    func fetchProfilePostData() -> [ProfilePostDataModel] {
        return postDataArray
        
    }
}
