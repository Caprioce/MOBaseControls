//
//  MBProgressHUD+HUD.swift
//  cooperator
//
//  Created by ccy on 2017/12/14.
//  Copyright © 2017年 ChiYue. All rights reserved.
//

import UIKit
import Foundation
import MBProgressHUD

public extension MBProgressHUD {

    static func showCYHUDAdded(view: UIView,anmiated: Bool) -> MBProgressHUD {
        let hud             = MBProgressHUD.showAdded(to: view, animated: true)
        hud.contentColor    = UIColor.white
        hud.bezelView.style = .solidColor
        hud.bezelView.color = UIColor.black.withAlphaComponent(0.7)
        return hud
    }

    static func showProgressHUD(view: UIView = kKeyWindow!  ) {
        let hud             = showAdded(to: view, animated: true)
        hud.contentColor    = UIColor.white
        hud.bezelView.style = .solidColor
        hud.bezelView.color = UIColor.black.withAlphaComponent(0.7)
    }

    static func hideProgressHUD(view: UIView = kKeyWindow!) {
        hide(for: view, animated: true)
    }

    static func showHUDWithTitle(title: String,delay: TimeInterval = 1.5) {
        if !title.isEmpty {
            let hud                       = showAdded(to: kKeyWindow!, animated: true)
            hud.backgroundColor           = UIColor.clear
            hud.mode                      = .text
            hud.detailsLabel.font         = UIFont.boldSystemFont(ofSize: 15.0)
            hud.detailsLabel.text         = title
            hud.detailsLabel.textColor    = UIColor.white
            hud.margin                    = 10.0
            hud.removeFromSuperViewOnHide = true
            hud.bezelView.style           = .solidColor
            hud.bezelView.color           = UIColor.black.withAlphaComponent(0.7)
            hud.hide(animated: true, afterDelay: delay)
        }
    }

    static func showClearBackHUD(title: String,detailTitle: String = "") {
        if !title.isEmpty {
            let hud                         = showAdded(to: kKeyWindow!, animated: true)
            hud.mode                        = .text
            hud.isUserInteractionEnabled    = false
            hud.detailsLabel.font           = UIFont.boldSystemFont(ofSize: 15.0)
            hud.detailsLabel.textColor      = UIColor.white
            hud.detailsLabel.text           = detailTitle
            hud.label.font                  = UIFont.boldSystemFont(ofSize: 15.0)
            hud.label.textColor             = UIColor.white
            hud.label.text                  = title
            hud.margin                      = 10.0
            hud.removeFromSuperViewOnHide   = true
            hud.bezelView.style             = .solidColor
            hud.bezelView.color             = UIColor.black.withAlphaComponent(0.7)
            hud.hide(animated: true, afterDelay: 2)
        }
    }

    static func showClearBackHUD(title: String,view: UIView) {
        if !title.isEmpty {
            let hud = showAdded(to: view, animated: true)
            hud.mode                        = .text
            hud.isUserInteractionEnabled    = false
            hud.detailsLabel.font           = UIFont.boldSystemFont(ofSize: 15.0)
            hud.detailsLabel.textColor      = UIColor.white
            hud.label.font                  = UIFont.boldSystemFont(ofSize: 15.0)
            hud.label.textColor             = UIColor.white
            hud.label.text                  = title
            hud.margin                      = 10.0
            hud.removeFromSuperViewOnHide   = true
            hud.bezelView.style             = .solidColor
            hud.bezelView.color             = UIColor.black.withAlphaComponent(0.7)
            hud.hide(animated: true, afterDelay: 2)
        }
    }

    static func showClearErrorHUD(error: Error, view: UIView) {
        var title: String?
        if let codeError = (error as? CYError) {
            title = codeError.domain
        }
        if let _ = title, (title! as NSString).length > 25 {
            title = "网络异常,请稍后再试"
        }
        showClearBackHUD(title:title ?? "网络异常,请稍后再试", view: view)
    }
    
}
