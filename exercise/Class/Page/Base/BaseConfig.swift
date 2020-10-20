//
//  BaseConfig.swift
//  exercise
//
//  Created by Wangxiaohan on 2020/9/15.
//  Copyright © 2020 wxhisveryshuai. All rights reserved.
//

import Foundation
import SnapKit

// 屏幕宽
let kScreenWidth: CGFloat = UIScreen.main.bounds.size.width
// 屏幕高
let kScreenHeight: CGFloat = UIScreen.main.bounds.size.height
// 标签栏高度
let kTabBarHeight: CGFloat = 49.0
// 状态栏的高度
let kStatusBarHeight: CGFloat = UIApplication.shared.statusBarFrame.size.height
// 导航栏的高度
let kNavgationBarHeight: CGFloat = 44.0
// 底部安全栏的高度
func kSafeAreaBottom() -> CGFloat {
    guard #available(iOS 11.0, *) else {
        return 0.0
    }
    let safeAreaBottom:CGFloat = (UIApplication.shared.windows.first?.safeAreaInsets.bottom)!
    return safeAreaBottom
}
