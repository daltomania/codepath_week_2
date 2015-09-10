//
//  SortCell.swift
//  Yelp
//
//  Created by Will Dalton on 9/9/15.
//  Copyright (c) 2015 Timothy Lee. All rights reserved.
//

import UIKit

@objc protocol SortCellDelegate {
    optional func sortCell(SortCell: SortCell, didChangeValue: Int)
}

class SortCell: UITableViewCell {
    
    weak var delegate: SortCellDelegate?

    @IBOutlet weak var onSegChange: UISegmentedControl!
    override func awakeFromNib() {
        super.awakeFromNib()
        onSegChange.addTarget(self, action: "segValueChanged", forControlEvents: UIControlEvents.ValueChanged)
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    func segValueChanged() {
        println("OMG")
        //delegate?.sortCell(self, didChangeVal
    }

}
