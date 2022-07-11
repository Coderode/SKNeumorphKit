//
//  NMTextField.swift
//  Pods-SKNeumorphKit_Example
//
//  Created by Sandeep on 09/09/21.
//


import Foundation
import UIKit
public class NMTextField : UITextField {
    public var upperShadowColor : UIColor = UIColor.white {
        didSet{
            shadowLayer.shadowColor = upperShadowColor.cgColor
        }
    }
    
    public var themeColor : UIColor = UIColor(red: 227/255, green: 230/255, blue: 234/255, alpha: 1.0) {
        didSet{
            self.layer.backgroundColor = themeColor.cgColor
            shadowLayer.backgroundColor = themeColor.cgColor
            
            if superView != nil {
                superview?.backgroundColor = themeColor
            }
        }
    }
    
    public var lowerShadowColor : UIColor  = UIColor(red: 209/255, green: 217/255, blue: 230/255, alpha: 1.0) {
        didSet{
            self.layer.shadowColor = lowerShadowColor.cgColor
        }
    }

    public var bevel = 3  {
        didSet{
            switch self.shadowType {
            case .inner:
                innerShadow()
            case .outer:
                outerShadow()
            }
        }
    }

    public var cornerRadius : CGFloat = 10.0 {
        didSet{
            self.layer.cornerRadius = cornerRadius
            shadowLayer.cornerRadius = cornerRadius
        }
    }
    public var shadowType : ShadowType = .outer {
        didSet{
            if shadowType == .inner {
                innerShadow()
            }else{
                outerShadow()
            }
        }
    }
    private let shadowLayer = CAShapeLayer()
    private var superView : UIView? = nil
    public func makeNeuromorphic(superView: UIView? = nil) {
        self.superView = superView
        if (self.layer.sublayers?[0] as? CAShapeLayer) != nil {
            self.layer.sublayers?.remove(at: 0)
        }
        
        self.tintColor = .label
        self.layer.cornerRadius = cornerRadius
        self.layer.cornerCurve = .continuous
        shadowLayer.cornerRadius = cornerRadius
        shadowLayer.cornerCurve = .continuous
        
        self.layer.shadowRadius = 2
        shadowLayer.shadowRadius = 2
        
        self.layer.shadowOpacity = 1
        shadowLayer.shadowOpacity = 1
        
        outerShadow()
        setupColors()
        self.layer.masksToBounds = false
        shadowLayer.frame = bounds
        self.layer.insertSublayer(shadowLayer, at: 0)
        
    }
    
    private func outerShadow(){
        self.layer.shadowOffset = CGSize(width: bevel, height: bevel)
        shadowLayer.shadowOffset = CGSize(width: -bevel, height: -bevel)
    }
    private func innerShadow(){
        self.layer.shadowOffset = CGSize(width: -bevel, height: -bevel)
        shadowLayer.shadowOffset = CGSize(width: bevel, height: bevel)
    }
    
    private func setupColors(){
        self.layer.shadowColor = lowerShadowColor.cgColor
        shadowLayer.shadowColor = upperShadowColor.cgColor
        
        self.layer.backgroundColor = themeColor.cgColor
        shadowLayer.backgroundColor = themeColor.cgColor
        
        if superView != nil {
            superview?.backgroundColor = themeColor
        }
    }
}

