//
//  NMSlider.swift
//  Pods-SKNeumorphKit_Example
//
//  Created by Sandeep on 09/09/21.
//

import Foundation
import UIKit
public class NMSlider : UISlider {
    public var upperShadowColor : UIColor = UIColor.white {
        didSet{
            shadowLayer.shadowColor = upperShadowColor.cgColor
        }
    }

    public var themeColor : UIColor = UIColor(red: 227/255, green: 230/255, blue: 234/255, alpha: 1.0) {
        didSet{
            self.lowerLayer.backgroundColor = themeColor.cgColor
            shadowLayer.backgroundColor = themeColor.cgColor
            
            if superView != nil {
                superview?.backgroundColor = themeColor
            }
        }
    }
    
    public var lowerShadowColor : UIColor  = UIColor(red: 209/255, green: 217/255, blue: 230/255, alpha: 1.0) {
        didSet{
            self.lowerLayer.shadowColor = lowerShadowColor.cgColor
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
    private let lowerLayer = CAShapeLayer()
    private var superView : UIView? = nil
    public func makeNeuromorphic(superView: UIView? = nil) {
        self.superView = superView
        if (self.lowerLayer.sublayers?[0] as? CAShapeLayer) != nil {
            self.lowerLayer.sublayers?.remove(at: 0)
        }
        
        
        self.tintColor = .label
        self.lowerLayer.cornerRadius = self.layer.bounds.height / 2
        self.lowerLayer.cornerCurve = .continuous
        shadowLayer.cornerRadius = self.layer.bounds.height / 2
        shadowLayer.cornerCurve = .continuous
        
        self.lowerLayer.shadowRadius = 2
        shadowLayer.shadowRadius = 2
        
        self.lowerLayer.shadowOpacity = 1
        shadowLayer.shadowOpacity = 1
        
        outerShadow()
        setupColors()
        //self.lowerLayer.masksToBounds = false
        shadowLayer.frame = CGRect(origin: CGPoint(x: bounds.origin.x - 10, y: bounds.origin.y + bounds.height/2), size: CGSize(width: bounds.width + 18, height: 3.0))
        lowerLayer.frame = CGRect(origin: CGPoint(x: bounds.origin.x - 10, y: bounds.origin.y + bounds.height/2), size: CGSize(width: bounds.width + 18, height: 2.0))
        self.layer.insertSublayer(shadowLayer, at: 0)
        self.layer.insertSublayer(lowerLayer, at: 0)
        
    }
    
    private func outerShadow(){
        self.lowerLayer.shadowOffset = CGSize(width: bevel, height: bevel)
        shadowLayer.shadowOffset = CGSize(width: -bevel, height: -bevel)
    }
    private func innerShadow(){
        self.lowerLayer.shadowOffset = CGSize(width: -bevel, height: -bevel)
        shadowLayer.shadowOffset = CGSize(width: bevel, height: bevel)
    }
    
    private func setupColors(){
        self.lowerLayer.shadowColor = lowerShadowColor.cgColor
        shadowLayer.shadowColor = upperShadowColor.cgColor
        
        self.lowerLayer.backgroundColor = themeColor.cgColor
        shadowLayer.backgroundColor = themeColor.cgColor
        
        if superView != nil {
            superview?.backgroundColor = themeColor
        }
    }
}

