//
//  UIView+Extension.swift
//  exercise
//
//  Created by Wangxiaohan on 2020/9/15.
//  Copyright © 2020 wxhisveryshuai. All rights reserved.
//

import Foundation
import UIKit

extension UIView {
    // MARK: 圆角
    func corner(byRoundingCorners corners: UIRectCorner, radii: CGFloat) {
        let maskPath = UIBezierPath(roundedRect: self.bounds, byRoundingCorners: corners, cornerRadii: CGSize(width: radii, height: radii))
        let maskLayer = CAShapeLayer()
        maskLayer.frame = self.bounds
        maskLayer.path = maskPath.cgPath
        self.layer.mask = maskLayer
    }
    // MARK: 阴影
    func shadow(shadowColor: UIColor, shadowOpacity: Float, shadowRadius: CGFloat, shadowOffset:CGSize) {
        self.layer.shadowColor = shadowColor.cgColor
        //设置透明度
        self.layer.shadowOpacity = shadowOpacity
        //设置阴影半径
        self.layer.shadowRadius = shadowRadius
        //设置阴影偏移量
        self.layer.shadowOffset = shadowOffset
    }
}
