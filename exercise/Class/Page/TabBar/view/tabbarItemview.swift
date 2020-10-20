//
//  tabbarItemview.swift
//  exercise
//
//  Created by Wangxiaohan on 2020/9/15.
//  Copyright © 2020 wxhisveryshuai. All rights reserved.
//

import UIKit

class tabbarItemview: UIView {

    override init(frame: CGRect) {
        super.init(frame: frame)
        initUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    lazy var iconImg: UIImageView = {
        let icon = UIImageView.init()
        return icon
    }()
    lazy var clickBtn: UIButton = {
        let button = UIButton.init()
        return button
    }()
    var iconImageString: String?
    var selIconImageString: String?
    var isSelected: Bool? {
        didSet {
            if isSelected! {
                self.iconImg.image = UIImage.init(named: selIconImageString!)
            } else {
                self.iconImg.image = UIImage.init(named: iconImageString!)
            }
        }
    }
}
extension tabbarItemview {
    func initUI() {
        self.addSubview(iconImg)
        self.addSubview(clickBtn)
        self.backgroundColor = .white
        
        iconImg.snp.makeConstraints { (make) in
            make.width.height.equalTo(32)
            make.center.equalTo(self)
        }
        clickBtn.snp.makeConstraints { (make) in
            make.leading.bottom.trailing.top.equalTo(self)
        }
    }
    class func creatWithIconImg(iconImage: String, selImage: String, tagIndex: Int) -> tabbarItemview{
        let item: tabbarItemview = tabbarItemview.init()
        item.iconImageString = iconImage
        item.selIconImageString = selImage
        item.iconImg.image = UIImage.init(named: iconImage)
        item.clickBtn.tag = tagIndex
        return item
    }
}

