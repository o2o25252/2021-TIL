//
//  BountyInfo.swift
//  BountyList2
//
//  Created by 임희찬 on 2021/03/08.
//

import UIKit
//🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧
//🧑🏻‍💻 MODEL
struct BountyInfo {
    let name: String
    let bounty: Int
    
    var image: UIImage? {
        return UIImage(named: "\(name).jpg")
    }
    
    init(name: String,bounty: Int) {
        self.name = name
        self.bounty = bounty
    }
}
