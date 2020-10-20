//
//  BaseNavigationBar.swift
//  exercise
//
//  Created by Wangxiaohan on 2020/9/16.
//  Copyright © 2020 wxhisveryshuai. All rights reserved.
//

import UIKit

class BaseNavigationBar: UIView {
    override init(frame: CGRect) {
        super.init(frame: frame)
        setUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    lazy var bgView: UIView = {
        var view = UIView()
        return view
    }()

    lazy var titleLab: UILabel = {
        var lab = UILabel()
        lab.font = UIFont.boldSystemFont(ofSize: 18)
        lab.textColor = .black
        return lab
    }()
    
    lazy var bottomLine: UIView = {
        var line = UIView()
        line.backgroundColor = .init(hex: "ededed")
        return line
    }()
}
extension BaseNavigationBar {
    func setUI() {
        self.backgroundColor = .white
        self.addSubview(bgView)
        self.addSubview(titleLab)
        self.addSubview(bottomLine)
        
        bgView.snp.makeConstraints { (make) in
            make.leading.trailing.bottom.equalTo(self)
            make.top.equalTo(self).offset(kStatusBarHeight)
        }
        titleLab.snp.makeConstraints { (make) in
            make.centerX.centerY.equalTo(bgView)
        }
        bottomLine.snp.makeConstraints { (make) in
            make.leading.trailing.bottom.equalTo(bgView)
            make.height.equalTo(0.5)
        }
    }
    class func creat(title: String) -> BaseNavigationBar {
        let navbar:BaseNavigationBar = BaseNavigationBar(frame: CGRect(x: 0, y: 0, width: kScreenWidth, height: kStatusBarHeight + kNavgationBarHeight))
        navbar.titleLab.text = title
        return navbar
    }
}
