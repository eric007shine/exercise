//
//  Basevc.swift
//  exercise
//
//  Created by Wangxiaohan on 2020/9/16.
//  Copyright © 2020 wxhisveryshuai. All rights reserved.
//

import UIKit

class Basevc: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .init(hex: "f5f6f7")
        setNavigationBarConfig()
        setContentInset()
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        setNavigationBarConfig()
    }

}
extension Basevc {
    func setNavigationBarConfig() {
        navigationController?.isNavigationBarHidden = true
    }
    func setContentInset() {
        if #available(iOS 11.0, *) {
            UIScrollView.appearance().contentInsetAdjustmentBehavior = UIScrollView.ContentInsetAdjustmentBehavior.never
        }
    }
}
