//
//  tabBarModel.swift
//  exercise
//
//  Created by Wangxiaohan on 2020/9/16.
//  Copyright © 2020 wxhisveryshuai. All rights reserved.
//

import UIKit

class tabBarModel: NSObject {
    lazy var titles: [String] = ["首页","我的"]
    
    lazy var childvcs: [UIViewController] = [homevc(), minevc()]
}
