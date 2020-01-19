//
//  QuestionCollectionViewCell.swift
//  MathComp
//
//  Created by Ahmad Dzuizz Annajib on 5/1/20.
//  Copyright © 2020 Dzuizzapps. All rights reserved.
//

import UIKit

class QuestionCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var QILabel: UILabel!
    @IBOutlet weak var Q1A1Btn: UIButton!
    @IBOutlet weak var Q1A2Btn: UIButton!
    @IBOutlet weak var Q1A3Btn: UIButton!
    @IBOutlet weak var Q1A4Btn: UIButton!
    @IBOutlet weak var ViewCellWidth: NSLayoutConstraint!
    override func awakeFromNib() {
        super.awakeFromNib()
//        let screenWidth = UIScreen.main.bounds.size.width
//        ViewCellWidth.constant = screenWidth - (20 * 2)
    }
    
    
    
}
