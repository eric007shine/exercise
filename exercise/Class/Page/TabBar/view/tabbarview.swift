//
//  tabbarview.swift
//  exercise
//
//  Created by Wangxiaohan on 2020/9/15.
//  Copyright © 2020 wxhisveryshuai. All rights reserved.
//

import UIKit

protocol tabbarviewDelegate:class {
    func clickTabBarItem(_ index: Int)
}

class tabbarview: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.setUI()
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    weak var delegate: tabbarviewDelegate?
    
    lazy var homeBtnview: tabbarItemview = {
        var homeBtn = tabbarItemview.creatWithIconImg(iconImage: "tabBar_home_unselected", selImage: "tabBar_home_selected", tagIndex: 0)
        homeBtn.clickBtn.addTarget(self, action: #selector(clickBtnEvent(button:)), for: .touchUpInside)
        return homeBtn
    }()
    lazy var mineBtnview: tabbarItemview = {
        var mineBtn = tabbarItemview.creatWithIconImg(iconImage: "tabBar_mine_unselected", selImage: "tabBar_mine_selected", tagIndex: 1)
        mineBtn.clickBtn.addTarget(self, action: #selector(clickBtnEvent(button:)), for: .touchUpInside)
        return mineBtn
    }()
    lazy var bgview: UIView = {
        let view = UIView.init(frame: CGRect.init(x: 0, y: 0, width: kScreenWidth, height: kTabBarHeight))
        view.backgroundColor = .white
        return view
    }()
}
extension tabbarview {
    func setUI() {
        self.backgroundColor = .white
        shadow(shadowColor: .init(hex: "999999"), shadowOpacity: 1, shadowRadius: 5, shadowOffset: CGSize(width: 0, height: 0))
        self.addSubview(bgview)
        self.addSubview(homeBtnview)
        self.addSubview(mineBtnview)
        
        homeBtnview.snp.makeConstraints { (make) in
            make.leading.top.equalTo(self)
            make.bottom.equalTo(bgview)
        }
        mineBtnview.snp.makeConstraints { (make) in
            make.trailing.top.equalTo(self)
            make.bottom.equalTo(homeBtnview)
            make.leading.equalTo(homeBtnview.snp.trailing)
            make.width.equalTo(homeBtnview)
        }
        self.clickBtnEvent(button: homeBtnview.clickBtn)
    }
    @objc func clickBtnEvent(button: UIButton) {
        let index: Int = button.tag
        if index == 0 {
            homeBtnview.isSelected = true
            mineBtnview.isSelected = false
        } else {
            homeBtnview.isSelected = false
            mineBtnview.isSelected = true
        }
        self.delegate?.clickTabBarItem(index)
    }
}
