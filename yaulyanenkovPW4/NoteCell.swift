//
//  NoteCell.swift
//  yaulyanenkovPW4
//
//  Created by Ярослав Ульяненков on 23.10.2021.
//

import UIKit

class NoteCell: UICollectionViewCell {
    
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        titleLabel.pin(to: self, .left, .right)
        descriptionLabel.pin(to: self, .left, .right)
    }
    
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
}
