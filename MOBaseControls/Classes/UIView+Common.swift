//
//  UIView+Common.swift
//  Hupu
//
//  Created by 张驰 on 2018/6/28.
//  Copyright © 2018年 张驰. All rights reserved.
//

import UIKit

public extension UIView {
    
    var x:CGFloat {
        set {
            self.frame.origin.x = newValue
        }
        get {
           return self.frame.minX
        }
    }
    
    var y:CGFloat {
        set {
            self.frame.origin.y = newValue
        }
        get {
            return self.frame.minY
        }
    }
    
    var width:CGFloat {
        set {
            self.frame.size.width = newValue
        }
        get {
            return self.frame.width
        }
    }
    
    var height:CGFloat {
        set {
            self.frame.size.height = newValue
        }
        get {
            return self.frame.height
        }
    }
    
    var centerX:CGFloat {
        set {
            self.frame.origin.x = newValue - self.width/2
        }
        get {
            return self.x + self.width/2
        }
    }
    
    var centerY:CGFloat {
        set {
            self.frame.origin.x = newValue + self.height/2
        }
        get {
            return self.y + self.height/2
        }
    }
}


