//
//  ProfilePostDataManager.swift
//  HeartHub
//
//  Created by 제민우 on 2023/08/01.
//

import UIKit

class ProfilePostDataManager {
    private var postDataArray: [ProfilePost] = []
    
    func configureEnterProfilePostImageData() {
        postDataArray = [
            ProfilePost(postImage: UIImage(named: "HeartIcon3:3")),
            ProfilePost(postImage: UIImage(named: "HeartIcon2:3")),
            ProfilePost(postImage: UIImage(named: "HeartIcon2:3")),
            ProfilePost(postImage: UIImage(named: "HeartIcon1:3")),
            ProfilePost(postImage: UIImage(named: "HeartIcon2:3")),
            ProfilePost(postImage: UIImage(named: "HeartIcon3:3")),
            ProfilePost(postImage: UIImage(named: "HeartIcon2:3")),
            ProfilePost(postImage: UIImage(named: "HeartIcon1:3"))
        ]
    }
    
    func getEnterProfilePostImageData() -> [ProfilePost] {
        return postDataArray
        
    }
}
