//
//  YXJLinksButton.swift
//  whoRent
//
//  Created by yuanxiaojun on 16/3/1.
//  Copyright © 2016年 袁晓钧. All rights reserved.
//

import UIKit

public class YXJLinksButton: UIButton {

    private var linksColor = UIColor.whiteColor()

    public func setLinksColor(color: UIColor) {
        self.linksColor = color
        self.setNeedsDisplay()
    }

    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override public func drawRect(rect: CGRect) {
        let textRect = self.titleLabel!.frame
        let contextRef = UIGraphicsGetCurrentContext()

        let descender = self.titleLabel!.font.descender
        if (self.linksColor.isKindOfClass(UIColor)) {
            CGContextSetStrokeColorWithColor(contextRef, linksColor.CGColor)
        }

        CGContextMoveToPoint(contextRef, textRect.origin.x, textRect.origin.y + textRect.size.height + descender + 3)
        CGContextAddLineToPoint(contextRef, textRect.origin.x + textRect.size.width, textRect.origin.y + textRect.size.height + descender + 3)

        CGContextClosePath(contextRef)
        CGContextDrawPath(contextRef, CGPathDrawingMode.Stroke) // kCGPathStroke)
    }
}
