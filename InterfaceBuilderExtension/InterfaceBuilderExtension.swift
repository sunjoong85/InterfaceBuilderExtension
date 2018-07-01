//
//  InterfaceBuilderExtension.swift
//  InterfaceBuilderExtension
//
//  Created by KimSunjoong on 01/07/2018.
//  Copyright © 2018 Sunjoong Kim. All rights reserved.
//


import UIKit


@IBDesignable extension UIView {
    @IBInspectable var shadowColor:UIColor? {
        set {
            /*
             shadow 적용 시 runtime attribute의 color속성은 UIColor이나, 실제로 UIVIew는 cgColor값을 이용함.
             그렇기 때문에 runtime attribute 적용이 안 됨
             */
            layer.shadowColor = newValue!.cgColor
        }
        get {
            if let color = layer.shadowColor {
                return UIColor(cgColor:color)
            }
            else {
                return nil
            }
        }
    }
    
    @IBInspectable var shadowOpacity:Float {
        set {
            //            print(newValue)
            layer.shadowOpacity = newValue
        }
        get {
            return layer.shadowOpacity
        }
    }
    
    @IBInspectable var shadowOffset:CGSize {
        set {
            //            print(newValue)
            layer.shadowOffset = newValue
        }
        get {
            return layer.shadowOffset
        }
    }
    
    @IBInspectable var borderColor:UIColor? {
        set {
            layer.borderColor = newValue!.cgColor
        }
        get {
            if let color = layer.borderColor {
                return UIColor(cgColor:color)
            }
            else {
                return nil
            }
        }
    }
    
    @IBInspectable var borderWidth:CGFloat {
        set {
            layer.borderWidth = newValue
        }
        get {
            return layer.borderWidth
        }
    }
    
    @IBInspectable var cornerRadius:CGFloat {
        set {
            layer.cornerRadius = newValue
            
        }
        get {
            return layer.cornerRadius
        }
    }
}
