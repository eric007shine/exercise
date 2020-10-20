//
//  homevc.swift
//  exercise
//
//  Created by Wangxiaohan on 2020/9/15.
//  Copyright © 2020 wxhisveryshuai. All rights reserved.
//

import UIKit

class homevc: Basevc {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.addNavBar()
    }
    lazy var navbar: BaseNavigationBar = {
        let nbr: BaseNavigationBar = BaseNavigationBar.creat(title: "首页")
        return nbr
    }()

}
extension homevc {
    func addNavBar() {
        self.view.addSubview(navbar)
    }
}

