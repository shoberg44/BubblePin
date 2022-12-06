//
//  CellClass.swift
//  BubblePin
//
//  Created by STEVEN HOBERG on 12/1/22.
//

import Foundation
import UIKit
class CellClass : UITableViewCell{
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var typeLabel: UILabel!
    func configure(titleLabel : String, typeLabel : String){
        self.titleLabel.text = titleLabel
        self.typeLabel.text = typeLabel
    }
}
