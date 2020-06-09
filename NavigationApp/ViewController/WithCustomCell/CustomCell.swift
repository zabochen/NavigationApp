//
//  CustomCellTableViewCell.swift
//  NavigationApp
//
//  Created by Taras on 07.06.2020.
//  Copyright © 2020 Taras. All rights reserved.
//

import UIKit

class CustomCell: UITableViewCell, BaseCell {
    
    @IBOutlet weak var labelName: UILabel!
    
    static func cellNib() -> UINib? {
        // Cell Class Name == Cell Xib Name
        return UINib(nibName: String(describing: self), bundle: nil)
    }
    
    static func cellIdentifier() -> String {
        return String(describing: self)
    }
    
    func config(user: UserModel) {
        labelName.text = user.name
    }
}
