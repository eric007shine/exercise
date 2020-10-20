//
//  tabbarvc.swift
//  exercise
//
//  Created by Wangxiaohan on 2020/9/15.
//  Copyright © 2020 wxhisveryshuai. All rights reserved.
//

import UIKit

class tabbarvc: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white
        self.initChilds()
        self.setTabBarView()
    }
    
    lazy var tabBarData: tabBarModel = {
        return tabBarModel.init()
    }()
    lazy var tabBarv: tabbarview = {
        var tabBar = tabbarview.init()
        tabBar.delegate = self
        return tabBar
    }()
}
extension tabbarvc {
    func initChilds() {
        for vc: UIViewController in tabBarData.childvcs {
            let navc:UINavigationController = UINavigationController(rootViewController: vc)
            self.addChild(navc)
        }
    }
    func setTabBarView() {
        self.tabBar.isHidden = true
        self.view.addSubview(tabBarv)
        
        tabBarv.snp.makeConstraints { (make) in
            make.leading.bottom.trailing.equalTo(self.view)
            make.height.equalTo(kTabBarHeight + kSafeAreaBottom())
        }
    }
}
extension tabbarvc: tabbarviewDelegate {
    func clickTabBarItem(_ index: Int) {
        self.selectedIndex = index
    }
}
