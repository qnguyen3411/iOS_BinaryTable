//
//  BinaryCell.swift
//  iOS_BinaryCounter
//
//  Created by Quang Nguyen on 9/8/18.
//  Copyright © 2018 Quang Nguyen. All rights reserved.
//

import UIKit

class BinaryCell: UITableViewCell {
    
    @IBOutlet weak var numberLabel: UILabel!
    
    weak var delegate: MainVC?
    
    var numValue: Int = 0
    
    @IBAction func minusButtonPressed(_ sender: UIButton) {
        print("MINUS")
        delegate?.minusButtonPressed(by: self)
    }
    
    @IBAction func plusButtonPressed(_ sender: UIButton) {
        print("PLUS")
        delegate?.plusButtonPressed(by: self)
    }
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
