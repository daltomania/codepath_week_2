//
//  DealCell.swift
//  Yelp
//
//  Created by Will Dalton on 9/8/15.
//  Copyright (c) 2015 Timothy Lee. All rights reserved.
//

import UIKit

@objc protocol DealCellDelegate {
    optional func dealCell(DealCell: DealCell, didChangeValue value: Bool)
}

class DealCell: UITableViewCell {
    
    weak var delegate: DealCellDelegate?

    @IBOutlet weak var onSwitch: UISwitch!
    override func awakeFromNib() {
        super.awakeFromNib()
        onSwitch.addTarget(self, action: "switchValueChanged", forControlEvents: UIControlEvents.ValueChanged)
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    func switchValueChanged() {
        delegate?.dealCell?(self, didChangeValue: onSwitch.on)
    }
    
}
