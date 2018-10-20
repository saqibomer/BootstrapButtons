//
//  BootstrapButton.swift
//  BootstrapButtons
//
//  Created by TOxIC on 19/10/2018.
//  Copyright © 2018 TOxIC. All rights reserved.
//

import Foundation
import UIKit

@IBDesignable
class Btn : UIButton {
    
    var fontWeight            = UIFont.Weight.regular
    var textAlignHorizontal   : ContentHorizontalAlignment    = UIControl.ContentHorizontalAlignment.center
    var textAlignVertical     : ContentVerticalAlignment      = UIControl.ContentVerticalAlignment.center
    var borderWidth           : CGFloat  = 1.0
    var borderColor           : UIColor = UIColor.init(red: 204/255, green: 204/255, blue: 204/255, alpha: 1.0)
    
    @IBInspectable
    var titleText: String? {
        didSet {
            self.setTitle(titleText, for: .normal)
            self.setTitleColor(UIColor.init(red: 51/255, green: 51/255, blue: 51/255, alpha: 1.0), for: .normal)
            self.sharedInit()
        }
    }
    
    override init(frame: CGRect){
        super.init(frame: frame)
        sharedInit()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override func prepareForInterfaceBuilder() {
        sharedInit()
    }
    
    
   

    
    func sharedInit() {
        self.clipsToBounds = true
        self.layer.cornerRadius         = self.frame.size.height / 8.0
        self.layer.borderColor          = borderColor.cgColor
        self.layer.borderWidth          = CGFloat(borderWidth)
        self.contentVerticalAlignment   = self.textAlignVertical
        self.contentHorizontalAlignment = self.textAlignHorizontal
        self.titleLabel?.font           = UIFont.systemFont(ofSize: 14, weight: self.fontWeight)
        
        
    }

    
}
@IBDesignable
class BtnDefault: Btn {
    
    
    override func sharedInit() {
        self.backgroundColor = UIColor.white
        self.borderColor     = UIColor.init(red: 204/255, green: 204/255, blue: 204/255, alpha:1.0)
    }
    
}

@IBDesignable
class BtnPrimary: Btn {
    
    @IBInspectable
    override var titleText: String? {
        didSet {
            self.setTitle(titleText, for: .normal)
            self.setTitleColor(UIColor.white, for: .normal)
            self.sharedInit()
        }
    }
    
    override func sharedInit() {
        self.backgroundColor = UIColor.init(red: 51/255, green: 122/255, blue: 183/255, alpha: 1.0)
        self.borderColor     = UIColor.init(red: 46/255, green: 109/255, blue: 164/255, alpha: 1.0)
    }
}

@IBDesignable
class BtnSuccess: Btn {
    
    @IBInspectable
    override var titleText: String? {
        didSet {
            self.setTitle(titleText, for: .normal)
            self.setTitleColor(UIColor.white, for: .normal)
            self.sharedInit()
        }
    }
    
    override func sharedInit() {
        self.backgroundColor = UIColor.init(red: 92/255, green: 184/255, blue: 92/255, alpha: 1.0)
        self.borderColor     = UIColor.init(red: 76/255, green: 174/255, blue: 76/255, alpha: 1.0)
    }
}

@IBDesignable
class BtnInfo: Btn {
    
    @IBInspectable
    override var titleText: String? {
        didSet {
            self.setTitle(titleText, for: .normal)
            self.setTitleColor(UIColor.white, for: .normal)
            self.sharedInit()
        }
    }
    
    override func sharedInit() {
        self.backgroundColor = UIColor.init(red: 91/255, green: 192/255, blue: 222/255, alpha: 1.0)
        self.borderColor     = UIColor.init(red: 70/255, green: 184/255, blue: 218/255, alpha: 1.0)
    }
}

@IBDesignable
class BtnWarning: Btn {
    
    @IBInspectable
    override var titleText: String? {
        didSet {
            self.setTitle(titleText, for: .normal)
            self.setTitleColor(UIColor.white, for: .normal)
            self.sharedInit()
        }
    }
    
    override func sharedInit() {
        self.backgroundColor = UIColor.init(red: 240/255, green: 173/255, blue: 78/255, alpha: 1.0)
        self.borderColor     = UIColor.init(red: 238/255, green: 162/255, blue: 54/255, alpha: 1.0)
    }
}

@IBDesignable
class BtnDanger: Btn {
    
    @IBInspectable
    override var titleText: String? {
        didSet {
            self.setTitle(titleText, for: .normal)
            self.setTitleColor(UIColor.white, for: .normal)
            self.sharedInit()
        }
    }
    
    override func sharedInit() {
        self.backgroundColor = UIColor.init(red: 217/255, green: 83/255, blue: 79/255, alpha: 1.0)
        self.borderColor     = UIColor.init(red: 212/255, green: 63/255, blue: 58/255, alpha: 1.0)
    }
}


@IBDesignable
class BtnLink: Btn {
    
    @IBInspectable
    override var titleText: String? {
        didSet {
            self.setTitle(titleText, for: .normal)
            self.setAttributedTitle(self.attributedString(), for: .normal)
            self.setTitleColor(UIColor.init(red: 51/255, green: 122/255, blue: 183/255, alpha: 1.0), for: .normal)
            self.sharedInit()
        }
    }
    
    override func sharedInit() {
        self.backgroundColor = UIColor.clear
        self.borderColor     = UIColor.clear
    }
    
    
    private func attributedString() -> NSAttributedString? {
        let attributes : [NSAttributedString.Key : Any] = [
            NSAttributedString.Key.font : UIFont.systemFont(ofSize: 14.0),
            NSAttributedString.Key.foregroundColor : UIColor.init(red: 51/255, green: 122/255, blue: 183/255, alpha: 1.0),
            NSAttributedString.Key.underlineStyle : NSUnderlineStyle.single.rawValue
        ]
        let attributedString = NSAttributedString(string: self.currentTitle!, attributes: attributes)
        return attributedString
    }
}
