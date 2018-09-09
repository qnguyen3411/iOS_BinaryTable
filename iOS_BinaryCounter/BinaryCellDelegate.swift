//
//  BinaryCellDelegate.swift
//  iOS_BinaryCounter
//
//  Created by Quang Nguyen on 9/8/18.
//  Copyright © 2018 Quang Nguyen. All rights reserved.
//

import UIKit

protocol BinaryCellDelegate: class {
    func plusButtonPressed(by cell: BinaryCell)
    
    func minusButtonPressed(by cell: BinaryCell)
}
