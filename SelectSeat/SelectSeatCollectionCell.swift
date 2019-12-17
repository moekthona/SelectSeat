//
//  SelectSeatCollectionCell.swift
//  SelectSeat
//
//  Created by Moek Thona on 12/17/19.
//  Copyright © 2019 Moek Thona. All rights reserved.
//

import UIKit

class SelectSeatCollectionCell: UICollectionViewCell {
    static var cellId = "SelectSeatCollectionCell"
    
    @IBOutlet weak var viewSelectSeat: CustomView!
    @IBOutlet weak var lblTtitle: UILabel!
    
    override var isSelected: Bool {
        didSet {
            self.viewSelectSeat.color = isSelected ? THEME_COLOR : .white
            self.lblTtitle.textColor = isSelected ? UIColor.white : UIColor.black
        }
    }
}
