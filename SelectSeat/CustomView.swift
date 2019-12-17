//
//  TableCellOptionSelectionSelected.swift
//  SelectSeat
//
//  Created by Moek Thona on 12/17/19.
//  Copyright © 2019 Moek Thona. All rights reserved.
//

import UIKit

let THEME_COLOR: UIColor = UIColor(red: 236.0 / 255.0, green: 40.0 / 255.0, blue: 137.0 / 255.0, alpha: 1.0)

@IBDesignable
class CustomView: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
    }
    
    @IBInspectable var cornerRadius : CGFloat = 1 {
        didSet {
           commonInit()
        }
    }
    
    @IBInspectable var borderWidth : CGFloat = 0 {
        didSet {
            commonInit()
        }
    }
    
    @IBInspectable var borderColor : UIColor = THEME_COLOR {
        didSet {
            commonInit()
        }
    }
    
    @IBInspectable var color : UIColor = .white {
        didSet {
            commonInit()
        }
    }
    override func prepareForInterfaceBuilder() {
        commonInit()
    }
    
    func commonInit() {
        self.layer.backgroundColor = color.cgColor
        self.layer.borderWidth = borderWidth
        self.layer.borderColor = borderColor.cgColor
        self.layer.cornerRadius = cornerRadius
    }
    
}

